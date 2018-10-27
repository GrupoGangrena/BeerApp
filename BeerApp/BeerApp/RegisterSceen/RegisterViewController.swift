//
//  RegisterViewController.swift
//  BeerApp
//
//  Created by Ulises on 10/26/18.
//  Copyright © 2018 Grupo Gangrena. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneBarButtonTapped (_ sender: UIBarButtonItem) {
        let password = passwordTextField.text ?? ""
        let password2 = password2TextField.text ?? ""
        let name = nameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
print("DONE TAPPE")
    print("password: \(password)")
        print("password2:\(password2)")
        print("name: \(name)")
        print("email: \(email)")
        
    }
}



