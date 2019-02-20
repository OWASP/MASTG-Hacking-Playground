//
//  ListToDo.swift
//  MSTG-JWT
//
//  Created by Sven on 21/9/18.
//  Copyright © 2018 Sven Schleier. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

class ListToDo: UIViewController {

    @IBOutlet weak var responseLbl: UILabel!
    
    
    var titles = [String]()
//    var titlesa = ["test","123"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let Query_Todos = "http://54.255.184.119:8181/todos"
        
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

        
        
        Alamofire.request(Query_Todos, method: .get, headers: headers).responseJSON { (responseData) -> Void in
            
                    if((responseData.result.value) != nil) {
                        
                        print(responseData)
                        
                        
                        // https://github.com/SwiftyJSON/SwiftyJSON
                        let swiftyJsonVar = JSON(responseData.result.value!)
                        
                        var title:String = ""
                        
                        // very lame by using a label with line breaks, but it works
                        // should be replaced by a proper table https://www.youtube.com/watch?v=-d8onvFwXjk
                        for (key,subJson):(String, JSON) in swiftyJsonVar {
//                            print (key)
//                            print (subJson["title"])
                            title += subJson["title"].string!
                            title += "\n"
                            
                        }
                        
                        self.responseLbl.text = title
                        
                    }
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
