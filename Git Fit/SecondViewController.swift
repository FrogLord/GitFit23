//
//  SecondViewController.swift
//  Git Fit
//
//  Created by Kurt Galicha on 2019-06-04.
//  Copyright © 2019 The Computer bouz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var upperbodyEnabled : Bool = false
    var legsEnabled : Bool = false
    var coreEnabled : Bool = false
    var armsEnabled : Bool = false
    var cardioEnabled : Bool = false
    
    var pickedExercise1 : String = ""
    var pickedExercise2 : String = ""
    var pickedExercise3 : String = ""
    var pickedExercise4 : String = ""
    var pickedExercise5 : String = ""
    
    var upperBodyArray : Array = ["Shoulder Press", "Pushups", "Incline Dumbell Press", "Bench Press", "Deadlift", "Rows", "Weighted Shoulder Shurgs"]
    var legsArray : Array = ["CowBell Squats", "Leg Press", "Seated Leg Curls", "Starjump Squats", "Seated Leg Extensions", "Calf Rasies", "Second Wall Sit" ]
    var coreArray : Array = ["Plank", "Sit ups", "V-sits", "Crunches", "Leg Raises", "Plank Ups", "Russian Twist"]
    var armsArray : Array = ["Dumbell Curls", "Tricep Dips", "Tricep Pulldowns", "Barbell Curls", "Hammer Curls", "Pull Ups", "Chin Up"]
    var cardioArray : Array = ["Burpies", "Minute Run", "Minute Bike", "Jumping Jacks", "Minute Stairclimber", "Mountain Climbers", "Weighted Lunges"]
    
    var exercise1  = ""
    var exercise2  = ""
    var exercise3  = ""
    var exercise4  = ""
    var exercise5  = ""
    
    var repNumber1 : String = ""
    var repNumber2 : String = ""
    var repNumber3 : String = ""
    var repNumber4 : String = ""
    var repNumber5 : String = ""

    
    //workout labels
    @IBOutlet weak var workoutLabel1: UITextField!
    @IBOutlet weak var workoutLabel2: UITextField!
    @IBOutlet weak var workoutLabel3: UITextField!
    @IBOutlet weak var workoutLabel4: UITextField!
    @IBOutlet weak var workoutLabel5: UITextField!
    
    //rep labels
    @IBOutlet weak var repLabel1: UITextField!
    @IBOutlet weak var repLabel2: UITextField!
    @IBOutlet weak var repLabel3: UITextField!
    @IBOutlet weak var repLabel4: UITextField!
    @IBOutlet weak var repLabel5: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        exerciseChecker1()
        exerciseChecker2()
        exerciseChecker3()
        exerciseChecker4()
        exerciseChecker5()
        
       
       
        
        
       
        
     
        
       
    
        
        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func exerciseChecker1() {
        if upperbodyEnabled == true {
            exercise1 = upperBodyArray.randomElement()!
            workoutLabel1.text = exercise1
            repNumber1 = String(Int.random(in: 6...12))
            repLabel1.text = repNumber1
        }
    }
    
    func exerciseChecker2() {
        if legsEnabled == true {
            exercise2 = legsArray.randomElement()!
            workoutLabel2.text = exercise2
            repNumber2 = String(Int.random(in: 6...12))
            repLabel2.text = repNumber2
        }
    }
    
    func exerciseChecker3() {
        if coreEnabled == true {
            exercise3 = coreArray.randomElement()!
            workoutLabel3.text = exercise3
            repNumber3 = String(Int.random(in: 6...12))
            repLabel3.text = repNumber3
        }
    }
    
    func exerciseChecker4() {
        if armsEnabled == true {
            exercise4 = armsArray.randomElement()!
            workoutLabel4.text = exercise4
            repNumber4 = String(Int.random(in: 6...12))
            repLabel4.text = repNumber4
        }
    }
    
    func exerciseChecker5() {
        if cardioEnabled == true {
            exercise5 = cardioArray.randomElement()!
            workoutLabel5.text = exercise5
            repNumber5 = String(Int.random(in: 6...12))
            repLabel5.text = repNumber5
        }
    }

}
