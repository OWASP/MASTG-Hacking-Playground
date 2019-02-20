//
//  CreateToDo.swift
//  MSTG-JWT
//
//  Created by Sven on 22/9/18.
//  Copyright © 2018 Sven Schleier. All rights reserved.
//


import Foundation
import UIKit
import Alamofire
import SwiftyJSON

class CreateToDo: UIViewController {

    @IBOutlet weak var NameToDo: UITextField!
    @IBOutlet weak var ResponseLbl: UILabel!
    
    @IBAction func CreateToDoBtn(_ sender: UIButton) {
        
        let Create_Todos = "http://54.255.184.119:8181/todos"
        
        
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        print (documentDirectory)
        let JWTFile = documentDirectory.appending("/JWT.plist")
        
        guard let resultDictionary = NSMutableDictionary(contentsOfFile: JWTFile) else {
            NSLog("Contents could not be read.")
            return
        }
        
        let JWT = resultDictionary.object(forKey: "token") as? String
        
        let Bearer = "Bearer " + JWT!
        
        print("RESULT", Bearer)
        
        let headers: HTTPHeaders = [
            "Authorization": Bearer,
            "Accept": "application/json"
        ]
        
        //getting the username and password
        let parameters: Parameters=[
            "title":NameToDo.text!,
        ]
        
        //making a post request
        Alamofire.request(Create_Todos, method: .post, parameters: parameters, headers: headers).responseJSON
            {
                response in
                //printing response
                print(response)
                
                // HTTP 201 = created
                if response.response?.statusCode == 201 {
                    self.ResponseLbl.text = "Added to your list"
                }else{
                    //error message in case of invalid credential
                    self.ResponseLbl.text = "Error on Server side"
                }
                
            }
    }
}
