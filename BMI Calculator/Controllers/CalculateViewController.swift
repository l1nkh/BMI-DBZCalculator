//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    // Sliders
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    // Labels
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    // Variables
    var bmi: Float?;
    
    // Init CalculatorLogic Object
    var calculatorLogic = CalculatorLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func updateSliderLabel(_ sender: UISlider) {
        
        if sender == heightSlider {
            heightLabel.text = String(format: "%.2fm", sender.value)
        } else {
            weightLabel.text = "\(Int(sender.value))kg"
        }
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorLogic.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "openResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openResult" {
            if let destinationVC = segue.destination as? ResultViewController {
                destinationVC.bmi = calculatorLogic.getBMI()
            }
        }
    }
}
