//
//  ViewController.swift
//  Login
//
//  Created by Carlos Alberto Savi on 02/03/21.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBAction func forgotUsernameTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Esqueceu a senha"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Esqueceu o usuário"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }




}

