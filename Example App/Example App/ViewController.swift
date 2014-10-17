//
//  ViewController.swift
//  Example App
//
//  Created by nerdsville on 10/5/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        topLabel.text = "Changed"
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

