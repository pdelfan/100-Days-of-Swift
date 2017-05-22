//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Pouria Delfanazari on 2017-05-21.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalTextfield.becomeFirstResponder() //lanuches the keyboard upon start
        createToolbar()
        tipPercentSlider.isEnabled = false
    }
    
    // MARK: - Outlets
    @IBOutlet weak var subtotalTextfield: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    // MARK: - Properties
    let model = Model()
    
    // MARK: - Interactions
    @IBAction func dragSlider(_ sender: UISlider) {
        tipPercentageLabel.text = "Tip (\(Int(sender.value))%):" // update tip label when sliding
        
        model.tipPercentFromSlider = Int(sender.value)
        updateLabels()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        tipPercentSlider.isEnabled = false
    }
    
    // MARK: - Functions
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        
        // create barbuttonitems 
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(dismissKeyboard))
        
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: self,
            action: nil)
        
        // add items to toolbar
        toolbar.setItems([flexibleSpace, doneButton], animated: true)
        
        // add toolbar to keyboard
        subtotalTextfield.inputAccessoryView = toolbar
        
    }

    func dismissKeyboard() {
        subtotalTextfield.resignFirstResponder()
        tipPercentSlider.isEnabled = true
        
        if subtotalTextfield.text?.characters.count == 0 {
            subtotalTextfield.text = "$0.00"
            model.subtotalFromTextField = "0.00"
            updateLabels()
        } else {
            model.subtotalFromTextField = subtotalTextfield.text!
            model.tipPercentFromSlider = Int(tipPercentSlider.value)
            updateLabels()
        }
        
    }

    //update labels on screen
    func updateLabels() {
        subtotalTextfield.text = model.subtotalAsCurrency
        tipAmountLabel.text = model.tipAmountAsCurrency
        totalAmountLabel.text = model.totalAmountAsCurrency
    }
}

