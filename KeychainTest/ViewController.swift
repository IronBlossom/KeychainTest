//
//  ViewController.swift
//  KeychainTest
//
//  Created by Ishtiaq Mahmood Amin on 5/11/19.
//  Copyright © 2019 Adaptive Enterprise Limited. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func savePasswordButtonTapped(_ sender: Any) {
        if let password = passwordTextField.text {
            let saveSuccessful: Bool = KeychainWrapper.standard.set(password, forKey: "userPassword")
            print("Save was successful: \(saveSuccessful)")
            self.view.endEditing(true)
        }else {
            print("Input some data first")
        }
    }
    
    @IBAction func retrievePasswordButtonTapped(_ sender: Any) {
        let retrievedPassword: String? = KeychainWrapper.standard.string(forKey: "userpassword")
        print("Retrieved passwork is: \(retrievedPassword!)")
    }
}

