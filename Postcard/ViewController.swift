//
//  ViewController.swift
//  Postcard
//
//  Created by Shalbha Garg on 11/18/14.
//  Copyright (c) 2014 Shalbha Garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var messageLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a button here to test commit
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        messageLabel2.hidden = false
        messageLabel2.textColor = UIColor.blueColor()
        messageLabel2.text = enterNameTextField.text
        
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
    }
}

