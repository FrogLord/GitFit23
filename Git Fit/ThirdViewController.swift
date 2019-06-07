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
    
    
    //IBOutlets
    
    @IBOutlet weak var minuteLabel: UITextField!
    @IBOutlet weak var secondLabel: UITextField!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    //IBActions
    @IBAction func startButtonPressed(_ sender: Any) {
        startButton.isHidden = true
        pauseButton.isHidden = false
        stopButton.isEnabled = true
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ThirdViewController.updateTime), userInfo: nil, repeats: true)
    }
    @IBAction func stopButtonPressed(_ sender: Any) {
        stopWatchTimer.invalidate()
        
        startButton.isHidden = false
        pauseButton.isHidden = true
        stopButton.isEnabled = false
        
        currentTime = 0
        
        secondLabel.text = "0"
        minuteLabel.text = "0"
        
    }
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
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isHidden = true
        stopButton.isEnabled = false
        
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

}
