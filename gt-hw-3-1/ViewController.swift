//
//  ViewController.swift
//  gt-hw-3-1
//
//  Created by ake11a on 2022-10-11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstDigitTextField: UITextField!
    @IBOutlet weak var secondDigitTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func plusButton(_ sender: Any) {
       
        if let firstDigit = Double(firstDigitTextField.text!), let secondDigit = Double(secondDigitTextField.text!) {
            
            resultLabel.isHidden = false
            
            resultLabel.text = String(firstDigit + secondDigit)
        }
    }
    
    @IBAction func minusButton(_ sender: Any) {
        
        if let firstDigit = Double(firstDigitTextField.text!), let secondDigit = Double(secondDigitTextField.text!) {
            
            resultLabel.isHidden = false
            
            resultLabel.text = String(firstDigit - secondDigit)
        }
    }
    
    @IBAction func multyButton(_ sender: Any) {
       
        if let firstDigit = Double(firstDigitTextField.text!), let secondDigit = Double(secondDigitTextField.text!) {
            
            resultLabel.isHidden = false
            
            resultLabel.text = String(firstDigit * secondDigit)
        }
    }
    
    @IBAction func divButton(_ sender: Any) {
        
        if let firstDigit = Double(firstDigitTextField.text!), let secondDigit = Double(secondDigitTextField.text!) {
            
            if secondDigit != 0 {
                
                resultLabel.isHidden = false
                
                resultLabel.text = String(firstDigit / secondDigit)
            }
        }
    }

    override func viewDidLoad() {

        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

