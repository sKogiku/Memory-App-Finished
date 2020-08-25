//
//  ViewController.swift
//  Memory App
//
//  Created by Stanislav Kogiku on 2020/05/29.
//  Copyright © 2020 Stanislav Kogiku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
   
    
    var phrase: [String] = []
    var count: Int = 0
    var previousButton: UIButton?
    
    
    override func viewDidLoad() {
                super.viewDidLoad()
        
        let stanoString: String = "Good start for you. Now continue to connect other pairs to reveal the entire picture of Tokyo."
        phrase = stanoString.components(separatedBy: " ")
    }
        @IBAction func anyButtonPressed(_ sender: UIButton) {
            if let previousButton = previousButton {
                //there was a button pressed previously
                if previousButton.tag == sender.tag && previousButton != sender {
                // correct answer
                    previousButton.isHidden = true
                    sender.isHidden = true
                    count += 2
                } else {
                    // wrong answer
                  }
                self.previousButton?.alpha = 1.0
                self.previousButton = nil
            } else {
                self.previousButton = sender
                self.previousButton?.alpha = 0.5
              }
            
            var newString: String = ""
            for i in 0..<count {
                if i < phrase.count {
                    newString += phrase[i] + " "
                }
            }
            textLabel.text = newString
            textLabel.isHidden = false
        }
}

