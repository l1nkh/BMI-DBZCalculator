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
    
    func calulateBMI(height: Float, weight: Float) -> Float{
        return weight / (height * height)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bmi: Float = calulateBMI(height: heightSlider.value, weight: weightSlider.value)
        print(bmi)
        
        let secondVC = SecondViewController();
        secondVC.bmiValue = bmi;
        
        
        self.present(secondVC, animated: true, completion: nil)
    }
}
