//
//  JSExport.swift
//  MSTG-JWT
//
//  Created by Sven on 12/10/18.
//  Copyright © 2018 Sven Schleier. All rights reserved.
//

import UIKit
import Foundation
import JavaScriptCore

// Custom protocol must be declared with `@objc`
@objc protocol PersonJSExports : JSExport {
    var firstName: String { get set }
    var lastName: String { get set }
    var birthYear: NSNumber? { get set }
    
    func getFullName() -> String
    
    /// create and return a new Person instance with `firstName` and `lastName`
    static func createWith(firstName: String, lastName: String) -> Person
}

// Custom class must inherit from `NSObject`
@objc class Person : NSObject, PersonJSExports {
    // properties must be declared as `dynamic`
    dynamic var firstName: String
    dynamic var lastName: String
    dynamic var birthYear: NSNumber?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    class func createWith(firstName: String, lastName: String) -> Person {
        return Person(firstName: firstName, lastName: lastName)
    }
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}


class JSExport: JSExport, UIViewController {

    let context = JSContext()

    // export Person class
    context.setObject(Person.self, forKeyedSubscript: "Person")

    // load Mustache.js
    if let mustacheJSString = String(contentsOfFile:..., encoding:NSUTF8StringEncoding, error:nil) {
        context.evaluateScript(mustacheJSString)
    }
    
}
