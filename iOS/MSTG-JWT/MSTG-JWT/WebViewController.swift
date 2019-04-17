//
//  WebViewController.swift
//  MSTG-JWT
//
//  Created by Sven on 26/8/18.
//  Copyright © 2018 Sven Schleier. All rights reserved.
//

import WebKit
import Foundation
//import WebCacheCleaner


class WebViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!

    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        
        WebCacheCleaner.clean()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        
        
        
        
//        let webView = UIWebView(frame: view.bounds)
//        view.addSubview(webView)
//

//        let url = URL(string: "http://127.0.0.1:8181/test.html")!
        
        let url = URL(string: "http://192.168.2.73:8181/test.html")!
        webView.configuration.preferences.setValue(true, forKey: "allowFileAccessFromFileURLs")
        
        
        
//        webView.configuration.preferences.setValue(true, forKey: "allowUniversalAccessFromFileURLs")
//        webView.configuration.preferences.setValue(true, forKey: "allowingReadAccessToURL")
//        webView.loadFileURL(url, allowingReadAccessTo: Bundle.resourceURL!)
        
        
        
        webView.load(URLRequest(url: url))
    
        
    
    

//        if let filePath = Bundle.main.path(forResource: "hack", ofType: "html") {
//            webView.load(URLRequest(url: URL(fileURLWithPath: filePath)))
//        }
    
    }
    
    
    
    
    
    
    
//        let url = URL(string: "http://127.0.0.1:8181/test.html")!
//
        
        
//        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString
//        let webConfig = WKWebViewConfiguration()
//        let jwt_plist = try? String(contentsOfFile: documentsPath.appendingPathComponent("JWT.plist"), encoding: String.Encoding.utf8)
//        let script = WKUserScript(source: jwt_plist!, injectionTime: .atDocumentStart, forMainFrameOnly: false)
//        webConfig.userContentController.addUserScript(script)
//        webView = WKWebView(frame: self.view.frame, configuration: webConfig)
        
//
//        let fileURL = NSURL(fileURLWithPath: documentsPath.appendingPathComponent("index.html") as String) as URL
//        let filePath = NSURL(fileURLWithPath: documentsPath as String) as URL
//        webView.loadFileURL(fileURL, allowingReadAccessTo: filePath)
//
        

//        webView.load(URLRequest(url: url))
//        webView.allowsBackForwardNavigationGestures = true
        
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
