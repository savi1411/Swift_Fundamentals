//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Carlos Alberto Savi on 17/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBAction func changeTitle(_ sender: UIButton) {
//        print("Botão pressionado")
        mainLabel.text = "This app rocks!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

