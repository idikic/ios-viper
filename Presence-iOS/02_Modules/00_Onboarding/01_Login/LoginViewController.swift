//
//  LoginViewController.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController, LoginViewInterface {

    // MARK: Login view interface requirements
    var presenter: LoginViewDelegateInterface!

    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

// MARK: - IBActions -
extension LoginViewController {
    
    @IBAction func signInButtonActionHandler(sender: AnyObject) {
        presenter.didPressSignInButton()
    }

}