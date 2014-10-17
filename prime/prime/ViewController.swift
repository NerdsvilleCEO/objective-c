//
//  ViewController.swift
//  prime
//
//  Created by nerdsville on 10/12/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonClick(sender: AnyObject) {
        primeOutput.hidden = true
        var notPrime = false
        var number = numberInput.text.toInt()
        if(number != nil){
            if(number >= 3){
                for(var i = 1; i < number; i++){
                    if(number! % i == 0){
                        if(i != 1){
                            notPrime = true
                            i = number!
                        }
                    }
                }
            }
            if(notPrime){
                primeOutput.text = "The number is not prime"
                primeOutput.hidden = false
            }
            else{
                primeOutput.text = "The number is prime"
                primeOutput.hidden = false
            }
        }
        else{
            primeOutput.text = "Please enter a number!"
            primeOutput.hidden = false
        }
    }
    
    @IBOutlet weak var primeOutput: UILabel!
    @IBOutlet weak var numberInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

