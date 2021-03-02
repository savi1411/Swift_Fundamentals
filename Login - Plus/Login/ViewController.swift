//
//  ViewController.swift
//  Login
//
//  Created by Carlos Alberto Savi on 02/03/21.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBAction func loginTapped(_ sender: Any) {
        guard let username = usernameTextField.text, !username.isEmpty, username == "casavi",
              let password = passwordTextField.text, !password.isEmpty, password == "12345" else {
            showAlert()
            return
        }
        performSegue(withIdentifier: "LoginButtons", sender: sender)
        
    }
    
    @IBAction func forgotUsernameTapped(_ sender: Any) {
        performSegue(withIdentifier: "LoginButtons", sender: sender)
    }
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "LoginButtons", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    /// My Functions
    func showAlert() {
        let alert = UIAlertController(title: "Atenção!", message: "Login ou senha inválida", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

