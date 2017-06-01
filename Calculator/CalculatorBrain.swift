//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Seunghun Lee on 2017-06-01.
//  Copyright © 2017 Earlbread. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    private var accumulator: Double?

    mutating func performOperation(_ symbol: String) {
        switch symbol {
        case "π":
            accumulator = Double.pi
        case "√":
            if let operand = accumulator {
                accumulator = sqrt(operand)
            }
        default:
            break
        }
    }

    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }

    var result: Double? {
        get {
            return accumulator
        }
    }

}
