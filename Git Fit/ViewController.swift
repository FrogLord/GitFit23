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
    
    var upperbody : Bool = false
    var legs : Bool = false
    var core : Bool = false
    var arms : Bool = false
    var cardio : Bool = false
    
    var upperBodyArray : Array = ["Shoulder Press", "Pushups", "Incline Dumbell Press", "Bench Press", "Deadlift", "Rows", "Weighted Shoulder Shurgs"]
    var legsArray : Array = ["CowBell Squats", "Leg Press", "Seated Leg Curls", "Starjump Squats", "Seated Leg Extensions", "Calf Rasies", "Second Wall Sit" ]
    var coreArray : Array = ["Plank", "Sit ups", "V-sits", "Crunches", "Leg Raises", "Plank Ups", "Russian Twist"]
    var armsArray : Array = ["Dumbell Curls", "Tricep Dips", "Tricep Pulldowns", "Barbell Curls", "Hammer Curls", "Pull Ups", "Chin Up"]
    var cardioArray : Array = ["Burpies", "Minute Run", "Minute Bike", "Jumping Jacks", "Minute Stairclimber", "Mountain Climbers", "Weighted Lunges"]
    
    
    
    
    //IBOutlets
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
  
    

        
    
    @IBOutlet weak var createWorkoutButton: UIButton!


    
    
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
            
         
            
            performSegue(withIdentifier: "createWorkout", sender: UIButton())
        }
    }
    
    func exerciseChooser1() {
        if buttonDisable1 == 0 {
            upperbody = true
        }
    }
    
    func exerciseChooser2() {
        if buttonDisable2 == 0 {
            legs = true
        }
    }
        
    func exerciseChooser3() {
        if buttonDisable3 == 0 {
            core = true
        }
    }
            
    func exerciseChooser4() {
        if buttonDisable4 == 0 {
            arms = true
        }
    }
                
    func exerciseChooser5() {
        if buttonDisable5 == 0 {
            cardio = true
           
            
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "createWorkout" {
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.upperbodyEnabled = upperbody
            destinationVC.legsEnabled = legs
            destinationVC.coreEnabled = core
            destinationVC.armsEnabled = arms
            destinationVC.cardioEnabled = cardio
            
            
            
        }
    }

}
