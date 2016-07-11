//
//  ViewController.swift
//  LaundryApp
//
//  Created by Hashma Shahid on 7/11/16.
//  Copyright (c) 2016 Hashma Shahid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var url = NSURL(string: "http://www.laundryview.com/lvs.php")
        
        if url != nil {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
                print(data)
                
                if error == nil {
                    
                    var urlContent = NSString(data: data, encoding: NSASCIIStringEncoding) as NSString!
                    
                    print(urlContent)
                }
            })
            task.resume()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

