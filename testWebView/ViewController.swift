//
//  ViewController.swift
//  testWebView
//
//  Created by pampa on 6/25/15.
//  Copyright © 2015 pampa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    
    @IBOutlet weak var uiwv: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://baidu.com")
        let request = NSURLRequest(URL: url!)
        
        uiwv.loadRequest(request)
        uiwv.delegate = self
        
        
        
    }

    
    func webViewDidFinishLoad(webView: UIWebView) {
        //
        print("did finished load web page")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

