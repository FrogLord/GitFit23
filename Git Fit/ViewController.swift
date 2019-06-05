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
    
    var buttonDisable1 : Int = 0
    var buttonDisable2 : Int = 0
    var buttonDisable3 : Int = 0
    var buttonDisable4 : Int = 0
    var buttonDisable5 : Int = 0
    
    var picker1 = ["Upper Body", "Legs", "Core", "Arms", "Cardio"]
    
    var upperBody = ["shoulder press"]
    var legs = ["squats"]
    var core = ["plank"]
    var arms = ["dumbell curls"]
    var cardio = ["burpies"]
    //IBOutlets
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
  
    

        
    
    @IBOutlet weak var createWorkoutButton: UIButton!
    @IBOutlet weak var strengthButton: UIButton!
    @IBOutlet weak var enduranceButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func button1pressed(sender: UIButton) {
        if sender.tag == 1 && buttonDisable1 == 0 {
        button1.backgroundColor = UIColor.red
            buttonDisable1 = 1
        } else if sender.tag == 1 && buttonDisable1 == 1 {
            button1.backgroundColor = UIColor.green
            buttonDisable1 = 0
        }
    }
    
    @IBAction func button2pressed(sender: UIButton) {
        if sender.tag == 2 && buttonDisable2 == 0 {
            button2.backgroundColor = UIColor.red
            buttonDisable2 = 1
        } else if sender.tag == 2 && buttonDisable2 == 1 {
            button2.backgroundColor = UIColor.green
            buttonDisable2 = 0
        }
    }
    
    
    @IBAction func button3pressed(sender: UIButton) {
        if sender.tag == 3 && buttonDisable3 == 0 {
            button3.backgroundColor = UIColor.red
            buttonDisable3 = 1
        } else if sender.tag == 3 && buttonDisable3 == 1 {
            button3.backgroundColor = UIColor.green
            buttonDisable3 = 0
        }
    }
    
    @IBAction func button4pressed(sender: UIButton) {
        if sender.tag == 4 && buttonDisable4 == 0 {
            button4.backgroundColor = UIColor.red
            buttonDisable4 = 1
        } else if sender.tag == 4 && buttonDisable4 == 1 {
            button4.backgroundColor = UIColor.green
            buttonDisable4 = 0
        }
    }
    
    @IBAction func button5pressed(sender: UIButton) {
        if sender.tag == 5 && buttonDisable5 == 0 {
            button5.backgroundColor = UIColor.red
            buttonDisable5 = 1
        } else if sender.tag == 5 && buttonDisable5 == 1 {
            button5.backgroundColor = UIColor.green
            buttonDisable5 = 0
        }
    }
    
    @IBAction func createWorkout(sender: UIButton) {
        if sender.tag == 6 {
            exerciseChooser1()
            exerciseChooser2()
            exerciseChooser3()
            exerciseChooser4()
            exerciseChooser5()
        }
    }
    
    func exerciseChooser1() {
        if buttonDisable1 == 0 {
            print("button 1 selected")
        }
    }
    
    func exerciseChooser2() {
        if buttonDisable2 == 0 {
            print("button 2 selected")
        }
    }
        
    func exerciseChooser3() {
        if buttonDisable3 == 0 {
            print("button 3 selected")
        }
    }
            
    func exerciseChooser4() {
        if buttonDisable4 == 0 {
            print("button 4 selected")
        }
    }
                
    func exerciseChooser5() {
        if buttonDisable5 == 0 {
            print("button 5 selected")
        }
    }



}
