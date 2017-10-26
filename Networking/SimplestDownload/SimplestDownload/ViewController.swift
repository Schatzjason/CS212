//
//  ViewController.swift
//  SimplestDownload
//
//  Created by Jason Schatz on 3/23/17.
//  Copyright © 2017 Jason Schatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Download some bytes...

        let url = URL(string: "https://ccsf.edu")!
        let task = URLSession.shared.dataTask(with: url, completionHandler:
            {
                data, response, error in
         
                // Handle the error if there is one...
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                let htmlString = String(bytes: data!, encoding: .utf8)
                
                DispatchQueue.main.async
                {
                    self.webView.loadHTMLString(htmlString!, baseURL: url)
                }
            }
        )
        
        // This is an "asynchronous" call. The call is quick.
        // The thread does not actually do the work.
        task.resume()
        
    }
}

