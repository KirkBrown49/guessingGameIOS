//
//  ViewController.swift
//  guessingGameIOS
//
//  Created by Kirk Brown on 10/9/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:UI Outlets
    @IBOutlet weak var instrustionsLabel: UILabel!
    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var remainingLabel: UILabel!
    
    // MARK:UI Actions
    @IBAction func guessedButtonTapped(_ sender: Any) {
   
        let userInput = guessTextField.text!
        guard let guess = Int(userInput) else {
            feedbackLabel.text = "you didn't give me a number"
            return
        }
        guard guess >= 1 && guess <= 100 else {
            feedbackLabel.text = "Your number wasn't between 1 and 100"
            return
        }
        if guess == randomNumber {
            feedbackLabel.text = "You win"
        }  else if guess < randomNumber {
            feedbackLabel.text = "Guess Higher 👆"
        } else {
            feedbackLabel.text = "Guess lower 👇"
        }
        
        
    }
    //MARK: Properties
    var randomNumber = Int.random(in: 1...100)
    
    //MARK: LifeCylce
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
}

