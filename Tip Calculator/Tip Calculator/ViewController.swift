//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Rishab Jadhav on 12/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    var bill : Double = 0.00
    var tipOther : Double = 0.00
    @IBOutlet weak var tipSelector: UISegmentedControl!
    var tipAmt : Double = 0.00
    var total : Double = 0.00
    @IBOutlet weak var tipAmountDisplay: UILabel!
    @IBOutlet weak var totalDisplay: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var enterTip: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        billField.delegate = self
        enterTip.delegate = self
        
        billField.returnKeyType = .done
        billField.keyboardType = .numbersAndPunctuation
        updateUI()
        
        enterTip.isEnabled = false
    }
    
    @IBAction func billAdjusted(_ sender: UITextField) {
        bill = Double(billField.text!) ?? 0.0
        //this is the error
        updateUI()
    }
    
    @IBAction func otherTipAdjusted(_ sender: UITextField) {
        tipOther = Double(enterTip.text!) ?? 0.0
        
        total = bill * (tipOther + 1)
        tipAmt = bill * tipOther
        updateUI()
        
        
    }
    @IBAction func tipAdjusted(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0) {
            enterTip.isEnabled = false
            total = bill * 1.15
            tipAmt = bill * 0.15
        }
        if (sender.selectedSegmentIndex == 1) {
            enterTip.isEnabled = false
            total = bill * 1.18
            tipAmt = bill * 0.18
        }
        if (sender.selectedSegmentIndex == 2) {
            enterTip.isEnabled = false
            total = bill * 1.2
            tipAmt = bill * 0.2
        }
        if (sender.selectedSegmentIndex == 3) {
            enterTip.isEnabled = true
            
            
        }
        updateUI()
    }
    
    func updateUI() {
        tipAmountDisplay.text = String(format: "%.2f", tipAmt)
        totalDisplay.text = String(format: "%.2f", total)
        tipAmountDisplay.text = "$" + tipAmountDisplay.text!
        totalDisplay.text = "$" + totalDisplay.text!
    }
    
    
    
    @IBAction func reset(_ sender: UIButton) {
        billField.text = "$0.00"
        tipAmt = 0.0
        total = 0.0
        bill = 0.0
        updateUI()
    }
    


}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        billField.resignFirstResponder()
        return true
    }
    
}

