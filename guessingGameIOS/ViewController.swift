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
    @IBOutlet weak var guessesRemainingLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    // MARK:UI Actions
    @IBAction func guessedButtonTapped(_ sender: Any) {
        
        let userInput = guessTextField.text!
        guard let guess = Int(userInput) else {
            feedbackLabel.text = "you didn't give me a number"
            return
        }
        
        makeAGuess(guess)
        
        
    }
    //MARK: Properties
    var minimumNum = 1
    var maxmimumNum = 100
    var numberOfGuesses = 5
    var randomNumber = 0
    var guessesRemaining = 5
    //MARK: LifeCylce
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        restart()
        
    }
    //MARK: Functions
    
    func restart() {
        //random number
        randomNumber = Int.random(in: minimumNum...maxmimumNum)
        
        //guesses remaining
        guessesRemaining = 5
        
        //clear text field
        guessTextField.text = ""
        
        //enable text field
        guessTextField.isEnabled = true
        
        //hide play again button
        playAgainButton.isHidden = true
        
        //show guess button
        guessButton.isHidden = false
        
        //  reset feedback label
        feedbackLabel.text = "Guess a number! "
        
        guessesRemainingLabel.text = "You have \(guessesRemaining) guesses left."
    }
    
    func setupUIForRestart() {
        //dissble input
        guessTextField.isEnabled = false
        
        // hide guess button
        guessButton.isHidden = true
        
        //unhide play again button
        playAgainButton.isHidden = false
        
       
       
    }
    
    func makeAGuess(_ guess : Int) {
        guard guess >= 1 && guess <= 100 else {
            feedbackLabel.text = "Your number wasn't between 1 and 100"
            return
        }
        if guess == randomNumber {
            feedbackLabel.text = "You win"
            return
        } else {
            guard guessesRemaining > 0 else {
                feedbackLabel.text = "You lose! Random number is \(Int.random(in: 1...100))."
                
                setupUIForRestart()
                return
            }
            
            if guess < randomNumber {
                feedbackLabel.text = "Guess Higher 👆"
            } else {
                feedbackLabel.text = "Guess lower 👇"
            }
        }
        
        guessesRemaining -= 1
        guessesRemainingLabel.text = "You have \(guessesRemaining) guesses left"
    }
}


