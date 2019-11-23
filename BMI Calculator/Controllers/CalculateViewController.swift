//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        height.text = String(format: "%.2f", sender.value) + " in"
    }
    
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        weight.text = String(format: "%.0f", sender.value) + " lbs"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let weightInKg = weightSlider.value / 2.205
        let heightInCm = heightSlider.value * 2.54
        let bmiValueNumber = weightInKg/pow((heightInCm/100), 2)
        bmiValue = String(format: "%.2f", bmiValueNumber)
        
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = bmiValue
        }
    }
}
