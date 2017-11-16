//
//  Card.swift
//  Concentration
//
//  Created by Mac on 2017/11/16.
//  Copyright © 2017年 sunnyleeyun. All rights reserved.
//

import Foundation
struct Card
{
  var isFaceUp = false
  var isMatched = false
  var identifier: Int
  
  static var identifierFactory = 0
  
  static func getUniqueIdentifier() -> Int{
    identifierFactory += 1
    return identifierFactory
  }
  
  init() {
    self.identifier = Card.getUniqueIdentifier()
  }
}
