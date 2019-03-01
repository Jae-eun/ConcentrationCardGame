//
//  ViewController.swift
//  ConcetrationCardGame
//
//  Created by 이재은 on 28/02/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var flipCount = 0 {
    didSet {
      flipCountLabel.text = "Flips: \(flipCount)"
    }
  }
  
  var emojiChoices = ["👻","🎃","👻","🎃"]
  @IBOutlet var cardButtons: [UIButton]!
  @IBOutlet weak var flipCountLabel:
  UILabel!
  
  @IBAction func touchButton(_ sender: UIButton) {
    flipCount += 1
    if let cardNumber = cardButtons.index(of: sender) {
      flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
    } else {
      print("chosen card was not in cardButtons")
    }
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func updateviewModel() {
    for index in cardButtons.indices {
      let button = cardButtons[index]
      let card = game.cards[index]
      if card.isFaceUp {
        button.setTitle(emoji(for: card), for: .normal)
        button.backgroundColor = UIColor.white
      } else {
        button.setTitle("", for: .normal)
        button.backgroundColor = card.isMatched ? UIColor.clear : UIColor.orange
      }
    }
  }
  
  
}

