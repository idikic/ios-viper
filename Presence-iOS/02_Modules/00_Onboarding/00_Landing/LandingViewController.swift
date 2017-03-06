//
//  LandingViewController.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import UIKit

// MARK: - Landing View Controller -
final class LandingViewController: UIViewController, LandingViewInterface {

    // MARK: Landing view interface requirements
    var presenter: LandingViewDelegateInterface!

    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

// MARK: - IBActions -
extension LandingViewController {
    
    @IBAction func loginButtonActionHandler(_ sender: AnyObject) {
        presenter.didPressLoginButton()
    }

}
