//
//  ViewController.swift
//  guessingGameIOS
//
//  Created by Kirk Brown on 10/9/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var instrustionsLabel: UILabel!
    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var remainingLabel: UILabel!
    
    @IBAction func guessedButtonTapped(_ sender: Any) {
        var randomNum = Int.random(in:1..<100)
        let userInput = Int(readLine()!)
        if userInput! > randomNum {
            print("too high")
        }else {
            print("too low")
        }
        feedbackLabel.text = "You guessed \(guessTextField.text!)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
}

