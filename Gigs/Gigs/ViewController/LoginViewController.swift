//
//  LoginViewController.swift
//  Gigs
//
//  Created by Enzo Jimenez-Soto on 5/5/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    enum LoginType{
        case signUp
        case signIn
    }


    
    @IBOutlet weak var loginSignupSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    


}
