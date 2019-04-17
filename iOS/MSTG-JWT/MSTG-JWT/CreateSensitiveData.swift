//
//  CreateSensitiveData.swift
//  MSTG-JWT
//
//  Created by Sven on 25/9/18.
//  Copyright © 2018 Sven Schleier. All rights reserved.
//


import Foundation
import UIKit
import Alamofire
import SwiftyJSON
import CoreData
import KeychainSwift

class CreateSensitiveData: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pListCreation()
        
        // KeyChain
        let keychain = KeychainSwift()
        keychain.set("masterAccessCode123", forKey: "MSTG-JWT Passcode")
        print(keychain.get("my key"))
        
        
        // Core Data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        
        
        newUser.setValue("test", forKey: "username")
        newUser.setValue("test1234", forKey: "password")
        newUser.setValue("12", forKey: "age")
        
        do {
            
            try context.save()
            
        } catch {
            
            print("Failed saving")
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        //request.predicate = NSPredicate(format: "age = %@", "12")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "username") as! String)
            }
            
        } catch {
            
            print("Failed")
        }

        
        
    }
    
    
    func pListCreation() {
        let fileManager = FileManager.default
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let path = documentDirectory.appending("/debug.plist")
        
        if (!fileManager.fileExists(atPath: path)) {
            let dicContent:[String: String] = ["username": "debug@foo.org", "password":"debugPass"]
            let plistContent = NSDictionary(dictionary: dicContent)
            let success:Bool = plistContent.write(toFile: path, atomically: true)
            if success {
                print("file has been created!")
            }else{
                print("unable to create the file")
            }
            
        }else{
            print("file already exist")
        }
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
