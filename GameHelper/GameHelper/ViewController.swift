//
//  ViewController.swift
//  GameHelper
//
//  Created by Carlos Alberto Savi on 08/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var charactersButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        print(sender.title(for: .normal))
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

