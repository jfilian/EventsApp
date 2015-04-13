//
//  LogInViewController.swift
//  EventsApp
//
//  Created by jfilian1 on 4/7/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController
{
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func onTappedLoginButton(sender: UIButton)
    {
        if usernameTextField.text == "" || passwordTextField.text == ""
        {
            showAlert("Please enter a username and password", nil, self)
        }
        
        else
        {
            User.loginUser(usernameTextField.text, password: passwordTextField.text,completed:
                {
                    (result, error) -> Void in
                    if error != nil
                    {
                        showAlertWithError(error, self)
                    }
                    
                    else
                    {
                        self.dismissViewControllerAnimated(true, completion: nil)
                    }
            })
        }
    }
}
    

    
