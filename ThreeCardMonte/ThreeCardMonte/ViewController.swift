//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
    @IBAction func card1(_ sender: UIButton){}
    @IBAction func card2(_ sender: UIButton){}
    @IBAction func card3(_ sender: UIButton){}
    
        enum Cards: String {
            case threeCard, kingCard, cardBackRed
        }

        class ThreeCardMonte {
        var cards: [Cards] = [.cardBackRed,.kingCard,.threeCard]
        var cardsFlipped = false
        var card1: Cards
        var card2: Cards
        var card3: Cards
            
            init() {
                cards = cards.shuffled()
                card1 = cards[0]
                card2 = cards[1]
                card3 = cards[2]
            }
       func cardShuffle() {
           cards = cards.shuffled()
           card1 = cards[0]
           card2 = cards[1]
           card3 = cards[2]
       }
    }
}
        
// show another image
// lose, shows card and the card
