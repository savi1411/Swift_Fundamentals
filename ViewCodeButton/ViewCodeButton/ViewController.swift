//
//  ViewController.swift
//  ViewCodeButton
//
//  Created by Carlos Alberto Savi on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    fileprivate func extractedFunc() {
        // Do any additional setup after loading the view.
        
        // 1. Criar um botão programaticamente - equivale ao @IBOutlet
        let myButton = UIButton(type: .system)
        
        // 2. Posiciona o botão na view
        myButton.frame = CGRect(x: 120, y: 400, width: 200, height: 50)
        
        // 3. Atribuir o layout do botão - TODO
        
        // 4. Define o rótulo do botão
        myButton.setTitle("Clique em mim", for: .normal)
        
        // 5. Define a ação do botão
        myButton.addTarget(self, action: #selector(myButtonAction(_:)), for: .touchUpInside)
        
        // 6. Colocar o botão na view
        view.addSubview(myButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractedFunc()
               
    }
    
    @objc func myButtonAction(_ sender: UIButton!) {
        print("Botão clicado!")
    }


}

