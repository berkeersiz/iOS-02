//
//  ViewController.swift
//  3-AlertProject
//
//  Created by Berke Ersiz on 19.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordAgainText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        /* let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked.
            print("button clicked.")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true) */
        
        if nameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username not found!")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Please enter a password!")
        } else if passwordText.text != passwordAgainText.text {
            makeAlert(titleInput: "Error!", messageInput: "Password do not match!")
        } else {
            makeAlert(titleInput: "Success!", messageInput: "User OK!")
        }
    }
    //Bunu bir fonksiyon haline getirerek kısalttık.
    func makeAlert (titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}

