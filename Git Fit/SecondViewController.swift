//
//  SecondViewController.swift
//  Git Fit
//
//  Created by Kurt Galicha on 2019-06-04.
//  Copyright © 2019 The Computer bouz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //These variables are the variables connected to the seque that will change when a user disables an exercise
    var upperbodyEnabled : Bool = false
    var legsEnabled : Bool = false
    var coreEnabled : Bool = false
    var armsEnabled : Bool = false
    var cardioEnabled : Bool = false
    
    //These variables hold the exercise picked from the arrays
    var pickedExercise1 : String = ""
    var pickedExercise2 : String = ""
    var pickedExercise3 : String = ""
    var pickedExercise4 : String = ""
    var pickedExercise5 : String = ""
    
    //These arrays are used to pick a random exercise for the workout
    var upperBodyArray : Array = ["Shoulder Press", "Pushups", "Incline Dumbell Press", "Bench Press", "Deadlift", "Rows", "Weighted Shoulder Shurgs"]
    var legsArray : Array = ["CowBell Squats", "Leg Press", "Seated Leg Curls", "Starjump Squats", "Seated Leg Extensions", "Calf Rasies", "Second Wall Sit" ]
    var coreArray : Array = ["Plank", "Sit ups", "V-sits", "Crunches", "Leg Raises", "Plank Ups", "Russian Twist"]
    var armsArray : Array = ["Dumbell Curls", "Tricep Dips", "Tricep Pulldowns", "Barbell Curls", "Hammer Curls", "Pull Ups", "Chin Up"]
    var cardioArray : Array = ["Burpies", "Minute Run", "Minute Bike", "Jumping Jacks", "Minute Stairclimber", "Mountain Climbers", "Weighted Lunges"]
    
    //This variable is used for the segue from here to the third view contoller
    var exercise1  : String = ""
    var exercise2  : String = ""
    var exercise3  : String = ""
    var exercise4  : String = ""
    var exercise5  : String = ""
    
    //the random amount of reps for a user to do
    var repNumber1 : String = ""
    var repNumber2 : String = ""
    var repNumber3 : String = ""
    var repNumber4 : String = ""
    var repNumber5 : String = ""
    
    //These variables are also used for a segue
    var VC2enable1 : Bool = true
    var VC2enable2 : Bool = true
    var VC2enable3 : Bool = true
    var VC2enable4 : Bool = true
    var VC2enable5 : Bool = true
    
    //This variable is to indicate if the workout needs to be saved or randomized
    var index : Int = 1

    
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
    
    
    //When the view loads a random workout is generated or an old on is reloaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSegue(withIdentifier: "timer", sender: UIButton())
        if index == 1 {
        exerciseChecker1()
        exerciseChecker2()
        exerciseChecker3()
        exerciseChecker4()
        exerciseChecker5()
        
        }
        
        timerTransition1()
        timerTransition2()
        timerTransition3()
        timerTransition4()
        timerTransition5()
    }
    
    //This checks if a new exercise should be picked and if it should, picks one at random
    func exerciseChecker1() {
        if upperbodyEnabled == true {
            exercise1 = upperBodyArray.randomElement()!
            workoutLabel1.text = exercise1
            repNumber1 = String(Int.random(in: 6...12))
            repLabel1.text = repNumber1
        } else {
            workoutLabel1.text = ""
            repLabel1.text = ""
        }
    }
    
    //This checks if a new exercise should be picked and if it should, picks one at random
    func exerciseChecker2() {
        if legsEnabled == true {
            exercise2 = legsArray.randomElement()!
            workoutLabel2.text = exercise2
            repNumber2 = String(Int.random(in: 6...12))
            repLabel2.text = repNumber2
        } else {
            workoutLabel2.text = ""
            repLabel2.text = ""
        }
    }
    
    //This checks if a new exercise should be picked and if it should, picks one at random
    func exerciseChecker3() {
        if coreEnabled == true {
            exercise3 = coreArray.randomElement()!
            workoutLabel3.text = exercise3
            repNumber3 = String(Int.random(in: 6...12))
            repLabel3.text = repNumber3
        } else {
            workoutLabel3.text = ""
            repLabel3.text = ""
        }
    }
    
    //This checks if a new exercise should be picked and if it should, picks one at random
    func exerciseChecker4() {
        if armsEnabled == true {
            exercise4 = armsArray.randomElement()!
            workoutLabel4.text = exercise4
            repNumber4 = String(Int.random(in: 6...12))
            repLabel4.text = repNumber4
        } else {
            workoutLabel4.text = ""
            repLabel4.text = ""
        }
    }
    
    //This checks if a new exercise should be picked and if it should, picks one at random
    func exerciseChecker5() {
        if cardioEnabled == true {
            exercise5 = cardioArray.randomElement()!
            workoutLabel5.text = exercise5
            repNumber5 = String(Int.random(in: 6...12))
            repLabel5.text = repNumber5
        } else {
            workoutLabel5.text = ""
            repLabel5.text = ""
        }
    }
    
    //This segue is going to pass the workout to the timer so that it can be passed back later
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "timer" {
            
            let destinationVC = segue.destination as! ThirdViewController
            destinationVC.exerciseHolder1 = exercise1
            destinationVC.exerciseHolder2 = exercise2
            destinationVC.exerciseHolder3 = exercise3
            destinationVC.exerciseHolder4 = exercise4
            destinationVC.exerciseHolder5 = exercise5
            
            destinationVC.repHolder1 = repNumber1
            destinationVC.repHolder2 = repNumber2
            destinationVC.repHolder3 = repNumber3
            destinationVC.repHolder4 = repNumber4
            destinationVC.repHolder5 = repNumber5
            
            
            
            
            
        }
    }
    
    //This function checks if there is a preloaded workout to put back into the workoutLabels and repLabels
    func timerTransition1() {
        if VC2enable1 == true {
            
            workoutLabel1.text = exercise1
           
            repLabel1.text = repNumber1
        } else {
            workoutLabel1.text = ""
            repLabel1.text = ""
        }
    }

    //This function checks if there is a preloaded workout to put back into the workoutLabels and repLabels
    func timerTransition2() {
        if VC2enable2 == true {
            
            workoutLabel2.text = exercise2
           
            repLabel2.text = repNumber2
        } else {
            workoutLabel2.text = ""
            repLabel2.text = ""
        }
    }
    
    //This function checks if there is a preloaded workout to put back into the workoutLabels and repLabels
    func timerTransition3() {
        if VC2enable3 == true {
            
            workoutLabel3.text = exercise3
            
            repLabel3.text = repNumber3
        } else {
            workoutLabel3.text = ""
            repLabel3.text = ""
        }
    }
    
    //This function checks if there is a preloaded workout to put back into the workoutLabels and repLabels
    func timerTransition4() {
        if VC2enable4 == true {
            
            workoutLabel4.text = exercise4
            
            repLabel4.text = repNumber4
        } else {
            workoutLabel4.text = ""
            repLabel4.text = ""
        }
    }
    
    //This function checks if there is a preloaded workout to put back into the workoutLabels and repLabels
    func timerTransition5() {
        if VC2enable5 == true {
           
            workoutLabel5.text = exercise5
          
            repLabel5.text = repNumber5
        } else {
            workoutLabel5.text = ""
            repLabel5.text = ""
        }
    }
    
    //This will lock the workout in so that a new workout isn't generated when you come back from the timer page
    @IBAction func timerPressed() {
        index = 1
    }
    
    //This takes you back to the first view control and unsaves your workout
    @IBAction func backPressed() {
        index = 0
    }
}
