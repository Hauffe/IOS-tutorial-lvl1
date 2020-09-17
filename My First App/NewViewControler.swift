//
//  NewViewControler.swift
//  My First App
//
//  Created by Alex on 16/09/20.
//  Copyright © 2020 Alex. All rights reserved.
//


import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var text: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = text
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textView.text = text
    }
}
