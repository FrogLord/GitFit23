//
//  ThirdViewController.swift
//  Git Fit
//
//  Created by Kurt Galicha on 2019-06-04.
//  Copyright © 2019 The Computer bouz. All rights reserved.
//
//This is the StopWatch part of the project
import UIKit

class ThirdViewController: UIViewController {
    
    
    var stopWatchTimer = Timer()
    var currentTime = 0
    
    //these are used to pass the current workout from VC 2 to VC 3 and back
    var exerciseHolder1 : String = ""
    var exerciseHolder2 : String = ""
    var exerciseHolder3 : String = ""
    var exerciseHolder4 : String = ""
    var exerciseHolder5 : String = ""
    
    ////these are used to pass the current amount of reps from VC 2 to VC 3 and abck
    var repHolder1 : String = ""
    var repHolder2 : String = ""
    var repHolder3 : String = ""
    var repHolder4 : String = ""
    var repHolder5 : String = ""
    
    //these are used to pass which exercises are enabled and disabled
    var enable1 : Bool = false
    var enable2 : Bool = false
    var enable3 : Bool = false
    var enable4 : Bool = false
    var enable5 : Bool = false
    
    
    //IBOutlets
    
    @IBOutlet weak var minuteLabel: UITextField!
    @IBOutlet weak var secondLabel: UITextField!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    //IBActions
    @IBAction func startButtonPressed(_ sender: Any) {
        startButton.isHidden = true
        pauseButton.isHidden = true
        stopButton.isEnabled = true
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ThirdViewController.updateTime), userInfo: nil, repeats: true)
    }
    
    //This is the basic stopwatch function, going 1 interval each
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        stopWatchTimer.invalidate()
        
        startButton.isHidden = true
        pauseButton.isHidden = true
        stopButton.isEnabled = true
        
        currentTime = 0
        
        secondLabel.text = "0"
        minuteLabel.text = "0"
    }
    
    //This function is used to restart the clock to 0
    
    @IBAction func pauseButtonPressed(_ sender: Any) {
        stopWatchTimer.invalidate()
        
        startButton.isHidden = false
        pauseButton.isHidden = true
        
        
    }
    @objc func updateTime() {
        currentTime += 1
        minuteLabel.text = "\(currentTime / 60)"
        secondLabel.text = "\(currentTime % 60)"
        
        if currentTime == 3600 {
            currentTime = 0
            stopWatchTimer.invalidate()
        }
        else {
            print("Time Failed")
        }
    }
    
    //This function updates the time by one Interval everytime
    
    //Segue to back it up to the previous ViewController
    @IBAction func backButtonPressed(sender: UIButton) {
        if sender.tag == 9 {
            performSegue(withIdentifier: "backFromTimer", sender: UIButton())
            
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isHidden = true
        stopButton.isEnabled = false
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backFromTimer" {
            
            //this segue passes the workout back to VC 2 to be displayed instead of creating a new random one
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.exercise1 = exerciseHolder1
            destinationVC.exercise2 = exerciseHolder2
            destinationVC.exercise3 = exerciseHolder3
            destinationVC.exercise4 = exerciseHolder4
            destinationVC.exercise5 = exerciseHolder5
            
            destinationVC.repNumber1 = repHolder1
            destinationVC.repNumber2 = repHolder2
            destinationVC.repNumber3 = repHolder3
            destinationVC.repNumber4 = repHolder4
            destinationVC.repNumber5 = repHolder5
            
            
            enable1 = true
            enable2 = true
            enable3 = true
            enable4 = true
            enable5 = true
            
            destinationVC.VC2enable1 = enable1
            destinationVC.VC2enable2 = enable2
            destinationVC.VC2enable3 = enable3
            destinationVC.VC2enable4 = enable4
            destinationVC.VC2enable5 = enable5
            
            
            
            
        }
    }
}
