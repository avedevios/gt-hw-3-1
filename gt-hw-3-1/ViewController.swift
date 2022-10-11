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
    
    @IBOutlet weak var morzeLabel: UILabel!
    
    @IBOutlet weak var morzeTextField: UITextField!
    
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

    @IBAction func morzeButton(_ sender: Any) {
       
        let arrayLetter: [Character] =
        ["a", "b", "c", "d", "e", "f",
         "g", "h", "i", "j", "k", "l",
         "m", "n", "o", "p", "q", "r",
         "s", "t", "u", "v", "w", "x",
         "y", "z"]
                
        // Morse code by indexing
        let arrayMorze =
        [".-",  "-...", "-.-.", "-..",  ".",
        "..-.", "--.",  "....", "..",   ".---",
        "-.-",  ".-..", "--",   "-.",   "---",
        ".--.", "--.-", ".-.",  "...",  "-",
        "..-",  "...-", ".--",  "-..-", "-.--",
        "--.."]
        
        var result = ""
        
        if let textToMorze = morzeTextField.text {
            for symbol in textToMorze {
                if let indexOfLetter = arrayLetter.firstIndex(of: symbol) {
                    result += arrayMorze[indexOfLetter] + " "
                } else {
                    result += ":)"
                }
            }
        }
        
        morzeLabel.isHidden = false
        morzeLabel.text = result
    }
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

