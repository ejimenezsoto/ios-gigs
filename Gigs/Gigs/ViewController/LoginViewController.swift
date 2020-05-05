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
    
    var loginType: LoginType = .signUp
    
    var gigController: GigController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func segmentControlSelected(_ sender: Any) {
        if loginSignupSegmentedControl.selectedSegmentIndex == 0 {
            loginType = .signUp
            signUpButton.setTitle("Sign Up", for: .normal)
        } else {
            loginType = .signIn
            signUpButton.setTitle("Sign In", for: .normal)
        }
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        guard let username = userNameTextField.text, !username.isEmpty, let password = passwordTextField.text, !password.isEmpty else { return }
        if loginType == .signUp {
            gigController?.signUp(with: username, password: password) { (error) in
                if let error = error{
                    print("Error logging in: \(error)")
                    return
                }
                DispatchQueue.main.async {
                    let alert = UIAlertController(title: "Sign Up Successful", message: "Now please sign in", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                        self.loginType = .signIn
                        self.loginSignupSegmentedControl.selectedSegmentIndex = 1
                        self.signUpButton.setTitle("Sign In", for: .normal)
                    })
                    alert.addAction(okAction)
                    
                    self.present(alert, animated: true)
                }
            }
        }else{
            gigController?.login(with: username, password: password, completion: { (error) in
                guard error == nil else { return }
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
                
            })
        }
    }
    
    
}
