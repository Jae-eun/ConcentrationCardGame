//
//  Concentration.swift
//  ConcetrationCardGame
//
//  Created by 이재은 on 01/03/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

class Concentration {
  
  var cards = [Card]()
  
  func chooseCard(at index: Int) {
    if cards[index].isFaceUp {
      cards[index].isFaceUp = false
    } else {
      cards[index].isFaceUp = true
    }
  }
  
  init(numberOfPairsOfCards: Int) {
    for _ in 1...numberOfPairsOfCards {
      let card = Card()
      cards += [card, card]
      
      // suffled the cards
    }
  }
}
