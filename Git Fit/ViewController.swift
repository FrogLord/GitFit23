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
    //button 2
    //button 3
    //button 4
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var createWorkoutButton: UIButton!
    @IBOutlet weak var strengthButton: UIButton!
    @IBOutlet weak var enduranceButton: UIButton!
    
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
        
    }

   

}

