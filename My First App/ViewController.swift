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
        
        let label = UILabel()
        //label.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        label.text = "Hello from code!"
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        label.widthAnchor.constraint(equalToConstant: 300).isActive = true
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
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

