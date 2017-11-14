//
//  ViewController.swift
//  Concentration
//
//  Created by Mac on 2017/11/13.
//  Copyright © 2017年 sunnyleeyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  var flipCount = 0{
    didSet{ // property observer
      flipCountLabel.text = "Flips: \(flipCount)"
    }
  }
  
  @IBOutlet weak var flipCountLabel: UILabel! //It doesn't have to be initialized
  @IBAction func touchCard(_ sender: UIButton){
    flipCount += 1

  }
  
  
  func flipCard(withEmoji emoji: String, on button: UIButton){
    print("flipCard(withEmoji: \(emoji))")
    if button.currentTitle == emoji{
      button.setTitle("", for: UIControlState.normal)
      button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
    } else {
      button.setTitle(emoji, for: UIControlState.normal)
      button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
  }


}

