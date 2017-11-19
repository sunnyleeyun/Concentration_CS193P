//
//  Concentration.swift
//  Concentration
//
//  Created by Mac on 2017/11/16.
//  Copyright © 2017年 sunnyleeyun. All rights reserved.
//

import Foundation

class Concentration
{
  var cards = [Card]()
  var indexOneAndOnlyFaceUpCard: Int?
  func chooseCard(at index: Int){
    if !cards[index].isMatched {
      if let matchIndex = indexOneAndOnlyFaceUpCard, matchIndex != index{
        // check if cards match
        if cards[matchIndex].identifier == cards[index].identifier{
          cards[matchIndex].isMatched = true
          cards[index].isMatched = true
        }
        cards[index].isFaceUp = true
        indexOneAndOnlyFaceUpCard = nil
      } else {
        //either no cards or two cards are face up
        for flipDownIndex in cards.indices {
          cards[flipDownIndex].isFaceUp = false
        }
        cards[index].isFaceUp = true
        indexOneAndOnlyFaceUpCard = index
      }
    }
  }
  
  init(numberOfPairsOfCards: Int){
    for _ in 1...numberOfPairsOfCards{
      let card = Card()
      cards += [card, card]
    }
    // TODO - Shuffle the cards
  }
}
