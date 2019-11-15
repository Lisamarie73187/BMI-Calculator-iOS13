//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        height.text = String(format: "%.2f", sender.value) + " in"
    }
    
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        weight.text = String(format: "%.0f", sender.value) + " lbs"

    }
}
