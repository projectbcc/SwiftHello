//
//  ViewController.swift
//  SwiftHello
//
//  Created by Brendan Clegg on 6/30/16.
//
//

import UIKit

class ViewController: UIViewController {
    
    // outlet outputting text from text field to var nameTextField
    @IBOutlet weak var nameTextField: UITextField!
    
    // outlet outputting eventual message, lblMessage with text var from nameTextField
    @IBOutlet weak var lblMessage: UILabel!
    
    // action that removes text from text field upon touch down from the user
    @IBAction func textFieldPressed2(sender: UITextField) {nameTextField.text = ""
    }
    
    // action that when button is pressed, text entered from user is stored in an unchanging var.
    @IBAction func ButtonPressed(sender: AnyObject) {
        let name = nameTextField.text
        
        // text var is set to string to be displaying after button press
        lblMessage.text = "Hello, " + name!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // debug message to make sure view controller was successfully loaded. Outputs to console.
        print("the view controller was loaded")
        
        // initial text variable set in text field to give user direction
        nameTextField.text = "Enter Name Here"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

