//
//  ViewController.swift
//  Concentration
//
//  Created by Mac on 2017/11/13.
//  Copyright © 2017年 sunnyleeyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func touchCard(_ sender: UIButton) {
    flipCard(withEmoji: " 👻", on: sender)
  }
  
  @IBAction func touchSecondCard(_ sender: UIButton) {
    flipCard(withEmoji: "🤡", on: sender)
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

