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
        workoutLabel1.text = ""
        workoutLabel2.text = ""
        workoutLabel3.text = ""
        workoutLabel4.text = ""
        workoutLabel5.text = ""
        
        repLabel1.text = ""
        repLabel2.text = ""
        repLabel3.text = ""
        repLabel4.text = ""
        repLabel5.text = ""
        
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
