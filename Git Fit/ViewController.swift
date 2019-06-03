//
//  ViewController.swift
//  Git Fit
//
//  Created by Kurt Galicha on 2019-05-29.
//  Copyright © 2019 The Computer bouz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var workoutButton : Int = 0
    var strength = false
    var endurance = false
    var average = true
    //IBOutlets
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    
    @IBOutlet weak var createWorkoutButton: UIButton!
    @IBOutlet weak var strengthButton: UIButton!
    @IBOutlet weak var enduranceButton: UIButton!
    
    
    @IBOutlet weak var selectorWheel: UIPickerView!
    
    @IBAction func strengthCreate(_ sender: UIButton) {
        if sender.tag == 7 {
            endurance = false
            strength = true
            average = false
        }
        else {
            endurance = false
            strength = false
            average = true
        }
    }
    
    @IBAction func enduranceCreate() {
        
    }
    
    @IBAction func createRecipe() {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectorWheel.isHidden = true
        
    }
    
    @IBAction func selector() {
        
    }

   

}

