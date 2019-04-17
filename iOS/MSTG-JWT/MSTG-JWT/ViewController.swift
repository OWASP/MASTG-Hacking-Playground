//
//  ViewController.swift
//  MSTG-JWT
//
//  Created by Sven Schleier on 27/12/17.
//  Copyright © 2017 Sven Schleier. All rights reserved.
//

import Alamofire
import UIKit

class ViewController: UIViewController {

    // Defined a constant that holds the URL to register an account
    let URL_USER_REGISTER = "http://54.255.184.119:8181/signup"
//    let URL_USER_REGISTER = "http://127.0.0.1/signup"
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
//    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    //    @IBOutlet weak var textFieldEmail: UITextField!
//    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBAction func Register(_ sender: UIButton) {
    
        //creating parameters for the post request
        let parameters: Parameters=[
            
            "password":textFieldPassword.text!,
            "name":textFieldName.text!,
            "email":textFieldEmail.text!
        ]
    
        //Sending http post request
        Alamofire.request(URL_USER_REGISTER, method: .post, parameters: parameters).responseJSON
            {
                response in
                //printing response
                print(response)
                
                //getting the json value from the server
                if let result = response.result.value {
                    
                    //converting it as NSDictionary
                    let jsonData = result as! NSDictionary
                    
                    //displaying the message in label
                    if jsonData.value(forKey: "message") != nil {
                            self.labelMessage?.text = (jsonData.value(forKey: "message") as! String?)
                        
                            let token = jsonData.value(forKey: "auth_token") as! String
                            print (token)
                        
                            let fileManager = FileManager.default
                            let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
                            let path = documentDirectory.appending("/JWT.plist")
                        
                            let dicContent:[String: String] = ["token": token]
                            let plistContent = NSDictionary(dictionary: dicContent)
                            let success:Bool = plistContent.write(toFile: path, atomically: true)
                            if success {
                                print("file has been created!")
                            }else{
                                print("unable to create the file")
                            }
                        
                        
                    } else {
                        print("Message doesn't contain a value.")
                    }
                    
                }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

