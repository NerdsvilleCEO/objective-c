//
//  ViewController.swift
//  How many fingers
//
//  Created by nerdsville on 10/5/14.
//  Copyright (c) 2014 nerdsville. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var validationField1: UILabel!
    @IBOutlet weak var validationField2: UILabel!
    @IBOutlet weak var numberOfFingers: UITextField!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var image: UIImageView!
    var currentScore = 0
    
    @IBAction func buttonClick(sender: AnyObject) {
        var guess = numberOfFingers.text.toInt()
        validationField1.hidden = true
        validationField2.hidden = true
        if(guess != nil){
            if(guess >= 0){
                if(guess <= 5){
                  var computersFingers = Int(arc4random() % 6)
                  switch(computersFingers){
                  case 0:
                    image.image = UIImage(named: "nofingers.jpg")
                    break
                  case 1:
                    image.image = UIImage(named: "finger.jpg")
                    break
                  case 2:
                    image.image = UIImage(named: "Two-Fingers.png")
                    break
                  case 3:
                    image.image = UIImage(named: "3fingers.jpg")
                    break
                  case 4:
                    image.image = UIImage(named: "4fingers.jpg")
                    break
                  case 5:
                    image.image = UIImage(named: "five_fingers.jpg")
                     break
                  default:
                     break
                  }
                  if(computersFingers == guess){
                        currentScore += 1
                   }
                }
                else{
                    validationField1.text = "Don't be silly"
                    validationField1.hidden = false
                }
                
                score.text = "Score: \(currentScore)"
                image.hidden = false
            }

        }
        else{
            if(numberOfFingers.text != ""){
              validationField1.text = "You must guess a number"
              validationField1.hidden = false
              image.hidden = true
            }
            else{
              validationField1.text = "That would be cheating!"
              validationField2.hidden = false
              image.hidden = true
           }
            validationField1.hidden = false
      }
    
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

