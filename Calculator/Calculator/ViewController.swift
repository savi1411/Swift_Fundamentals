//
//  ViewController.swift
//  Calculator
//
//  Created by Carlos Alberto Savi on 24/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    @IBAction func operations(_ sender: UIButton) {
        
        if labelDisplay.text != "=" && sender.tag != 10 && sender.tag != 17 {
            previousNumber = Double(labelDisplay.text!)!
            if sender.tag == 13 { //Divide
                labelDisplay.text = "/";
            }
            if sender.tag == 14 { //Multiply
                labelDisplay.text = "x";
            }
            if sender.tag == 15 { //Subtract
                labelDisplay.text = "-";
            }
            if sender.tag == 16 { //Add
                labelDisplay.text = "+";
            }
            operation = sender.tag
            performingMath = true;
        } else if sender.tag == 17 {
            if operation == 13 { //Divide
                labelDisplay.text = String(previousNumber / numberOnScreen)
            } else if operation == 14 { //Multiply
                labelDisplay.text = String(previousNumber * numberOnScreen)
            } else if operation == 15 { //Subtract
                labelDisplay.text = String(previousNumber - numberOnScreen)
            } else if operation == 16 { //Add
                labelDisplay.text = String(previousNumber + numberOnScreen)
            }
        } else if sender.tag == 10 { // Clear
                labelDisplay.text = "0"
                previousNumber = 0;
                numberOnScreen = 0;
                operation = 0;
            }
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            labelDisplay.text = String(sender.tag)
            numberOnScreen = Double(labelDisplay.text!)!
            performingMath = false
        } else {
            labelDisplay.text = labelDisplay.text! + String(sender.tag)
            numberOnScreen = Double(labelDisplay.text!)!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

