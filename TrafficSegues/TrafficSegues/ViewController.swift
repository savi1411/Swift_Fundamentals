//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Carlos Alberto Savi on 01/03/21.
//

import UIKit

class ViewController: UIViewController {
       
    @IBOutlet weak var segueSwitch: UISwitch!
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

