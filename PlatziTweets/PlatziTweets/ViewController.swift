//
//  ViewController.swift
//  PlatziTweets
//
//  Created by Joaquin Segovia on 2/5/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - References to UI
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonAction() {
        //1. Get textFields inner values to validate
        let email = emailTextField.text
        let password = passwordTextField.text
        
        if email == "email", password == "123" {
            performSegue(withIdentifier: "home_segue", sender: nil)
        }else{
            print("Invalid credentials")
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

