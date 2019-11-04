//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // UITextFieldDelegate
    let images = ["threeCard", "kingCard", "cardBackRed"]
    
    // MARK: Properties
    @IBOutlet weak var pickACardLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    // break these two connections
    // control-drag
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    //IBOutlet weak var nameTextField: UITextField!
    //IBOutlet weak var mealNameLabel: UILabel!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // nameTextField.delegate = self
              
            // MARK: UITextFieldDelegate
            
              
              // MARK: Actions
              @IBAction func playAgain(_ sender: UIButton) {
                  // mealNameLabel.text = "Default Text"
                // this comes from the IBOutlet UILabel in sending a text. 
        
            // @IBAction func setDefaultLabelText(_ sender: UIButton) {
            // mealNameLabel.text = "Default Text"
                   // this comes from the IBOutlet weak var mealNameLabelP: UILabel!
            // }
            
        // func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // Hide the keyboard
        // textField.resignFirstResponder()
        // return true
        // }
        
        // func textFieldDidEndEditing(_ textField: UITextField) {
        // mealNameLabel.text = textField.text
        // }
    
    enableCards(true)
        
    card1.setBackgroundImage(UIImage(named: images[2]), for: UIControl.State.normal)
    card2.setBackgroundImage(UIImage(named: images[2]), for: UIControl.State.normal)
    card3.setBackgroundImage(UIImage(named: images[2]), for: UIControl.State.normal)
    }
    
    @IBAction func cards(_ sender: UIButton) {
    
    let randomCard = Int.random(in: 0...2)
    
    switch sender.tag {
    case 0:
        if sender.tag == randomCard {
            resultLabel.text = "You Win"
                sender.setBackgroundImage(UIImage(named: images[1]), for: .normal)
            } else {
                resultLabel.text = "You Lose"
                sender.setBackgroundImage(UIImage(named: images[0]), for: UIControl.State.normal)
            }
            enableCards(false)
        
        case 1:
                if sender.tag == randomCard {
                    resultLabel.text = "You Win"
                    sender.setBackgroundImage(UIImage(named: images[1]), for: UIControl.State.normal)
                } else {
                    resultLabel.text = "You Lose"
                    sender.setBackgroundImage(UIImage(named: images[0]), for: UIControl.State.normal)
                }
                enableCards(false)
            case 2:
                if sender.tag == randomCard {
                    resultLabel.text = "You Win"
                    sender.setBackgroundImage(UIImage(named: images[1]), for: UIControl.State.normal)
                } else {
                    resultLabel.text = "You Lose"
                    card2.isUserInteractionEnabled = false
                    sender.setBackgroundImage(UIImage(named: images[0]), for: UIControl.State.normal)
                }
                enableCards(false)
            default:
                print("Card not found")
                
            }
        }
        
        func enableCards(_ isEnabled: Bool) {
            card1.isEnabled = isEnabled
            card2.isEnabled = isEnabled
            card3.isEnabled = isEnabled
        }
}
}
// show another image
// lose, shows card and the card
