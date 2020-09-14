//
//  ViewController.swift
//  My First App
//
//  Created by Alex on 14/09/20.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "Change with code!"
        myTextField.becomeFirstResponder()
        lastName.becomeFirstResponder()
        myTextField.delegate = self
        lastName.delegate = self
    }
    @IBAction func buttonWasPressed(_ sender: Any) {
        myLabel.text = "Hello \(myTextField.text!) \(lastName.text!)!"
        view.endEditing(true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}

