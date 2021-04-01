//
//  ViewController.swift
//  Part2_L1_DavidArabyan
//
//  Created by David on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var passworLabel: UILabel!
    
    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        if usernameTextfield.text == " admin ", passwordTextField.text == " qwerty " {
            print (" Auth success ")
        } else {
            print ( " Auth deny " )
        }
    }
    
    
    
}

