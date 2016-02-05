//
//  LoginWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

final class LoginWireframe: LoginWireframeInterface {
    
    // MARK: Base Wireframe Interface Requirements
    weak var navigationController: UINavigationController?
    weak var viewController: UIViewController?
    
    var storyboard:UIStoryboard {
        return UIStoryboard.init(name: "Onboarding", bundle: nil)
    }
    
    func instantiateViewController<T>(context: T?) -> UIViewController {
        let loginViewController = storyboard.instantiateViewControllerWithIdentifier(LoginViewControllerIdentifier) as! LoginViewController
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(wireframe: self, view: loginViewController, interactor: interactor)
        loginViewController.presenter = presenter
        return loginViewController
    }

}

extension LoginWireframe {
    
    // MARK: Login Wireframe Interface Requirements
    func navigateToHomeScreen() {

        let window = UIApplication.sharedApplication().windows.first!
        UIView.transitionWithView(window,
            duration: 0.5,
            options: UIViewAnimationOptions.TransitionFlipFromBottom,
            animations: { () -> Void in

                let rootNavigationController = UINavigationController()
                let tabbarWireframe = TabbarWireframe()
                
                tabbarWireframe.navigationController = rootNavigationController
                tabbarWireframe.pushViewController()
                
                window.rootViewController = rootNavigationController

            },
            completion: { _ in
            
            })
    }
}