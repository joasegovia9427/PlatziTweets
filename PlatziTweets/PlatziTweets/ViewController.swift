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
    @IBOutlet weak var emailSwitch: UISwitch!
    
    @IBAction func loginButtonAction() {
        //1. Get textFields inner values to validate
        let email = emailTextField.text
        let password = passwordTextField.text
        
        if email == "email", password == "123" {
            if emailSwitch.isOn{
                // De esta manera guardamos valores con llave y valor en los UserDefaults
                storage.set(email, forKey: keyEmail)
            }else{
                storage.removeObject(forKey: keyEmail)
            }
            performSegue(withIdentifier: "home_segue", sender: nil)
        }else{
            print("Invalid credentials")
        }
    }
    
    private let keyEmail = "key-email"
    private let storage = UserDefaults.standard //brinda acceso a las variables guardadas de la aplicacion en el dispositivo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //De esta manera buscamos un string en los UserDefaults y lo asignamos.
        if let storedEmail = storage.string(forKey: keyEmail){
            emailTextField.text = storedEmail
            emailSwitch.isOn = true
        }else{
            emailSwitch.isOn = false
        }
    }
}
