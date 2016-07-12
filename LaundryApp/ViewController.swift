//
//  ViewController.swift
//  LaundryApp
//
//  Created by Hashma Shahid on 7/11/16.
//  Copyright (c) 2016 Hashma Shahid. All rights reserved.
//

import UIKit

class ViewController: UIViewController , NSXMLParserDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var url = NSURL(string: "http://www.laundryview.com/")
        //var url = NSURL(string: "http://example.com/website-with-xml")
        var xmlParser = NSXMLParser(contentsOfURL: url)
        xmlParser?.delegate = self
        xmlParser?.parse()


    }
    
    func parser(parser: NSXMLParser,
        didStartElement elementName: String,
        namespaceURI namespaceURI: String?,
        qualifiedName qualifiedName: String?,
        attributes attributeDict: [NSObject : AnyObject]){
        println("Element's name is \(elementName)")
        println("Element's attributes are \(attributeDict)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

