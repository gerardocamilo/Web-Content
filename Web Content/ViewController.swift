//
//  ViewController.swift
//  Web Content
//
//  Created by Gerardo Camilo on 03/11/14.
//  Copyright (c) 2014 ___GRCS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL(string: "http://gerardocamilo.wordpress.com")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!){
            (data, response, error) in
            
            var decodedData = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            println(decodedData)
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

