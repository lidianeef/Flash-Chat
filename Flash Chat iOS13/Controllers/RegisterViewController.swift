//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Lidiane Elaine Ferreira on 12/09/2022.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password =
            passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password)
            { authResult, error in
                if let e = error {
                    self.errorLabel.text = e.localizedDescription
                } else {
                    self.performSegue(withIdentifier: K.registerSegue , sender: self)
                }
            }
        }
        
    }
    
}
