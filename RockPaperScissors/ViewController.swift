//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Sam Meech-Ward on 2020-04-19.
//  Copyright © 2020 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var label: UILabel!
  
  var myHand = ""
  let hands = ["👊", "🤚", "✌️"]
  let losesAgainst = ["👊": "✌️", "🤚": "👊", "✌️": "🤚"]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  

  @IBAction func selectRock(_ sender: Any) {
    myHand = "👊"
    label.text = "You've selected \(myHand)"
  }
  
  @IBAction func selectPaper(_ sender: Any) {
    myHand = "🤚"
    label.text = "You've selected \(myHand)"
  }
  
  @IBAction func selectScissors(_ sender: Any) {
    myHand = "✌️"
    label.text = "You've selected \(myHand)"
  }
  
  
  func finishGame() {
    let iPhoneHand = hands.randomElement()!
       
   var message = ""
   if iPhoneHand == myHand {
     message = "It's a 👔"
   } else if losesAgainst[iPhoneHand] == myHand {
     message = "iPhone wins"
   } else {
     message = "You won"
   }
   
   label.text = "You've selected \(myHand)\niPhone selected \(iPhoneHand)\n\(message)"
  }
  
  @IBAction func play(_ sender: Any) {
    
    var counter = 3
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
      if counter > 0 {
        // countdown
        self.label.text = "You've selected \(self.myHand)\n\(counter)"
      } else {
        // play
        timer.invalidate()
        self.finishGame()sdfasdfasdfasdf
        
      }
      
      counter -= 1
    }
  }
}

