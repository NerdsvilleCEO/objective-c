//
//  ViewController.swift
//  catAge
//
//  Created by nerdsville on 10/5/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catsAge: UITextField!
    @IBOutlet weak var catsAgeLabel: UILabel!
    @IBOutlet weak var Age: UILabel!
    @IBOutlet weak var yearsOldLabel: UILabel!
    
    @IBAction func calculateButton(sender: AnyObject) {
        var catYears = (catsAge.text.toInt()! * 7)
        catsAgeLabel.hidden = false
        Age.text = String(catYears)
        Age.hidden = false
        yearsOldLabel.hidden = false
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

