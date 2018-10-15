//
//  CustomDifficulty.swift
//  guessingGameIOS
//
//  Created by Kirk Brown on 10/12/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
////
//
import UIKit

class  CustomDifficulty: UIViewController {
    
    @IBOutlet weak var RangeTextField: UITextField!
    
    @IBOutlet weak var NumberOfGuessesTextfield: UITextField!
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let guessingGameViewController =
            segue.destination as? ViewController else {return}
        guessingGameViewController.maxmimumNum = Int(RangeTextField.text!)!
        guessingGameViewController.numberOfGuesses = Int(NumberOfGuessesTextfield.text!)!
        //Allow the user to select the range from 1 to a 1000
    }
    
        
//        func UserRangeTextField(_ sender: Any) {
//            if userInput! > max{
//
//                CustomInstructionsLabel.text = "Please select a number between \(min) and \(max)"            } else {
//                CustomInstructionsLabel.text = "Please Select a number between \(min) and \(max) "
//            }
//        }
        // allow the user to select how many guesses
        
//        func CustomNumberOfGuesses(_ sender: Any) {
//            if userInput! > max {
//                CustomGuessesLabel.text = "please select a number of guesses between \(min) and \(max)"
//            }else{
//                CustomGuessesLabel.text = "please select a number of guesses between \(min) and \(max)"
//            }
//        }
}

