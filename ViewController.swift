//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 //       view1.isHidden = true
//        view2.isHidden = true
//        view3.isHidden = true
//        view4.isHidden = true
//        view5.isHidden = true
//        view6.isHidden = true
 //       view7.isHidden = true
//        
//        result1.isHidden = true
//        result2.isHidden = true
//        result3.isHidden = true
//        result4.isHidden = true
//        result5.isHidden = true
//        result6.isHidden = true
        
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        // Returns back a random Int (1, 2, 3, 4, 5, or 6)
        func randomDiceRoll() -> Int {
            return Int(arc4random_uniform(6) + 1)
        }
        print(randomDiceRoll())
        
        
            if randomDiceRoll() == 1 {
                view4.isHidden = false
                result1.isHidden = false
                result1.text = "1"
            } else if randomDiceRoll() == 2 {
                view1.isHidden = false
                view7.isHidden = false
            }
        
        
        func updateLabelWithRoll(roll: Int) {
            let roll = randomDiceRoll()
            let diceScore = String(roll)
            if result1.isHidden {
                result1.text = diceScore
                result1.isHidden = false
            } else if result2.isHidden {
                result2.text = diceScore
                result2.isHidden = false
            } else if result3.isHidden {
                result3.text = diceScore
                result3.isHidden = false
            } else if result4.isHidden {
                result4.text = diceScore
                result4.isHidden = false
            } else if result5.isHidden {
                result5.text = diceScore
                result5.isHidden = false
            } else if result6.isHidden {
                result6.text = diceScore
                result6.isHidden = false
            }
        }
        
    }
    
    
}
