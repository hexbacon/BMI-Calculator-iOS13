//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Christopher Mena on 11/25/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    // Variables and Outlets
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        // Dismiss segure, bo back to main screen
        self.dismiss(animated: true, completion: nil)
    }
    
}
