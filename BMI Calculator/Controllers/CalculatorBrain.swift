//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Christopher Mena on 11/26/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        let colors = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)]
        if(bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: colors[0] )
        } else if(bmiValue >= 18.5 && bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: colors[1] )
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies! ", color: colors[2] )
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
}
