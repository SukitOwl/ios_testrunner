//
//  ViewController.swift
//  testrunner
//
//  Created by admin on 25/12/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var text: UITextView!
    
    @IBAction func buttonAc(_ sender: UIButton) {
        let a = text.text
        let names = ["Ford", "Zaphod", "Trillian", "Arthur", "Marvin"]
        let x = getIntFromCPP()
        let myString = String(x)
        text.text = a! + "\naction trig " + names.randomElement()! + myString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

