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
  func chooseCard(at index: Int){
    
  }
  
  init(numberOfPairsOfCards: Int){
    for _ in 1...numberOfPairsOfCards{
      let card = Card()
      cards += [card, card]
    }
  }
}
