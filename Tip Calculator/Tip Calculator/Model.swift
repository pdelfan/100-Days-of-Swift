//
//  Model.swift
//  Tip Calculator
//
//  Created by Pouria Delfanazari on 2017-05-21.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import Foundation

class Model {
    /* 
    Basic logic
    1. Take input
    2. Calculate new values
    3. Return as strings for labels
    */
    
    // accept subtotal as string
    // accept tipPercent as Int
    
    // convert subtotal to NSDecimal for calculation
    // convert tipPercent to NSDecimal for calculation 
    
    // calculate tipAmount
    // calculate totalAmount 
    
    // convert subtotal to Currency 
    // convert tipAmount to Currency 
    // convert total to Currenct 
    
    var subtotalFromTextField = "0.00"
    var tipPercentFromSlider = 15
    
    // MARK: - Decimals for Calculation
    var subTotalAsDecimal: NSDecimalNumber{
        return NSDecimalNumber(string: subtotalFromTextField)
    }
    
    // 0.15     15.0/100
    var tipPercent: NSDecimalNumber {
        return NSDecimalNumber(value: Double(tipPercentFromSlider)/100)
    }
    
    // subtotal * tipPercent = tipAmount
    var tipAmount: NSDecimalNumber {
        return subTotalAsDecimal.multiplying(by: tipPercent)
    }
    
    // subtotal + tipAmount = totalAmount
    var totalAmount: NSDecimalNumber {
        return subTotalAsDecimal.adding(tipAmount)
    }
    
    // MARK - Convert to Currency
    let formatter = NumberFormatter()
    
    var subtotalAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: subTotalAsDecimal as NSNumber)!
    }
    
    var tipAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: tipAmount as NSNumber)!
    }
    
    var totalAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: totalAmount as NSNumber)!
    }
    
}
