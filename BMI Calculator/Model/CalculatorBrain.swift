//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohamed Aboullezz on 01/01/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    func getBMIValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        }
    func getAdvice () -> String {
        return bmi?.advice ?? "No Advice"
    }
    func getColor () -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue =  weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Food!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less Food!", color: .red)
        }
    }
   
}

