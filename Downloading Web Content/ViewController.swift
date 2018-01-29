//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Aman Sidhant on 1/5/18.
//  Copyright © 2018 Aman Sidhant. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        
        webView = WKWebView()
        
        let url = URL(string: "https://stackoverflow.com")
        webView.load(URLRequest(url: url!))
        webView.allowsBackForwardNavigationGestures = true
        webView.navigationDelegate = self
        view = webView
        
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

