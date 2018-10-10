//
//  SelectDifficulty.swift
//  guessingGameIOS
//
//  Created by Kirk Brown on 10/10/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import UIKit

class SelectDifficultViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let guessingGameViewController =
        segue.destination as? ViewController else
        { return }
        switch segue.identifier {
        case "EasyToGuessingGame":
           guessingGameViewController.maxmimumNum = 50
        case "MediumToGuessingGame":
            break
        case "HardToGuessingGame":
        guessingGameViewController.maxmimumNum = 500
            guessingGameViewController.numberOfGuesses = 10
        default:
            break
        }
    }
}
