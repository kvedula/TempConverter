//
//  ViewController.swift
//  Tinovation
//
//  Created by Kamesh Vedula on 2/14/15.
//  Copyright (c) 2015 Kamesh Vedula. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var input: UITextField!
    
    @IBOutlet var answer: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.input.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //textfield func for pressing return
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true);
        return false;
    }
    
    //textfield func for the touch on BG
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        input.resignFirstResponder()
        self.view.endEditing(true)
    }

    @IBAction func convert(sender: AnyObject) {
        var temperature = input.text.toInt()
        
        if temperature == nil {
            answer.text = "Please enter a number"
        } else {
            var tempInF = temperature! * 9 / 5 + 32
            
            answer.text = String(tempInF) + "˚F"
        }
        
        
    }
    
}

