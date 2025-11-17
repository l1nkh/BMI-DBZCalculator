//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Diogo Henriques on 13/11/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: BMI?;
    
    let calculatorLogic = CalculatorLogic();

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = calculatorLogic.formatBMItoString(bmi?.value ?? 0.0)
        adviceLabel.text = bmi?.advice;
        bmiImage.image = bmi?.image;
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true);
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
