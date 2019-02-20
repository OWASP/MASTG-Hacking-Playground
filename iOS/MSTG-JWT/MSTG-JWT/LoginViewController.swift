//
//  LoginViewController.swift
//  MSTG-JWT
//
//  Created by Sven Schleier on 5/1/18.
//  Copyright © 2018 Sven Schleier. All rights reserved.
//
//  Example from https://www.simplifiedios.net/xcode-login-screen-example/

import Foundation
import UIKit
import Alamofire

class LoginViewController: UIViewController {

    // Defined a constant that holds the URL to login
    let URL_USER_LOGIN = "http://54.255.184.119:8181/auth/login"
//    let URL_USER_LOGIN = "http://127.0.0.1/auth/login"
    
    //the defaultvalues to store user data
    let defaultValues = UserDefaults.standard
    
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    
    @IBAction func buttonLogin(_ sender: UIButton) {

        
        //getting the username and password
        let parameters: Parameters=[
            "email":textFieldUserName.text!,
            "password":textFieldPassword.text!
        ]

//        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
//        print (documentDirectory)
//        let JWTFile = documentDirectory.appending("/JWT.plist")
//    
//                
//        guard let resultDictionary = NSMutableDictionary(contentsOfFile: JWTFile) else {
//            NSLog("Contents could not be read.")
//            return
//        }
//        
//        let JWT = resultDictionary.object(forKey: "token") as? String
//        
//        let Bearer = "Bearer " + JWT!
//        
//        print("RESULT", Bearer)
//        
//        
//        let headers: HTTPHeaders = [
//            "Authorization": Bearer,
//            "Accept": "application/json"
//        ]
        
        //making a post request
//        Alamofire.request(URL_USER_LOGIN, method: .post, parameters: parameters, headers: headers).responseJSON
        Alamofire.request(URL_USER_LOGIN, method: .post, parameters: parameters).responseJSON
            {
                response in
                //printing response
                print(response)
                
                if response.response?.statusCode == 200 {
                    
                
                
                    //getting the json value from the server
                    if let result = response.result.value {
                        let jsonData = result as! NSDictionary
                        
                
                        //if there is no error
                        if let val = jsonData["auth_token"] {
                            let token = jsonData.value(forKey: "auth_token") as! String
                            print (token)
                            //switching the screen
    //                        let storyboard = UIStoryboard(name: "StoryboardName", bundle: nil)
    //                        let vc = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as UIViewController
    //                        self.present(vc, animated: true, completion: nil)
                            
                            
                            let profileViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
                            self.navigationController?.pushViewController(profileViewController, animated: true)
                            self.dismiss(animated: false, completion: nil)
                            
                            
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
                            
                            
                            
                        }else{
                            //error message in case of invalid credential
                            self.labelMessage.text = "Invalid username or password"
                        }
                        
                    }
                    
                        //getting the token from response
//                        let token = jsonData.value(forKey: "auth_token") as! String
//                        print (token)
//

                }
                else {
//                    let error = response.result.value as! NSDictionary
//                    let errorMessage = error.object(forKey: "message") as! String
                    self.labelMessage.text = "Check your network connection"
//                    print(errorMessage) 
//                    failure(errorMessage)
                }
                
        }
    }
    
}
