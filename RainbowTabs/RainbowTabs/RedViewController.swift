//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Carlos Alberto Savi on 02/03/21.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        tabBarItem.badgeValue = "!"
        print("A tela foi carregada")
    }
    

    override func viewWillDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }

    override func viewWillAppear(_ animated: Bool) {
        tabBarItem.badgeValue = "R"
    }

}

