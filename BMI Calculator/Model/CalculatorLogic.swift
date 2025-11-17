//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Diogo Henriques on 14/11/2025.
//  Copyright © 2025 diogoh. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorLogic {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let BMIValue: Float = weight / (height * height);
        let bmiAdvice: String;
        let bmiImage: UIImage

        if BMIValue < 18.5 {
            bmiAdvice = "You are underweight!"
            bmiImage = UIImage(named: "gotenks_skinny")!
        } else if BMIValue > 24.9 {
            bmiAdvice = "You are overweight!"
            bmiImage = UIImage(named: "gotenks_fat")!
        } else {
            bmiAdvice = "You have a healthy weight!"
            bmiImage = UIImage(named: "gotenks_perfect")!
        }

        bmi = BMI(value: BMIValue, advice: bmiAdvice, image: bmiImage);
    }
    
    func getBMI() -> BMI {
        return bmi ?? BMI(value: 0, advice: "N/A", image: UIImage(named: "gotenks_skinny")!);
    }
    
    func formatBMItoString(_ bmi: Float) -> String {
        return String(format: "%.2f", bmi);
    }
}
