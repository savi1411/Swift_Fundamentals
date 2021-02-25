//
//  ViewController.swift
//  TwoButons
//
//  Created by Carlos Alberto Savi on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func setText(_ sender: Any) {
        label.text = textField.text
    }
    
    @IBAction func clearText(_ sender: Any) {
        textField.text = ""
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

