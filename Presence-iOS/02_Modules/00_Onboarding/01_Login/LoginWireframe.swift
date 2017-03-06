//
//  LoginWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Base Wireframe Interface Requirements -
final class LoginWireframe: LoginWireframeInterface {
    
    weak var navigationController: UINavigationController?
    weak var viewController: UIViewController?
    
    var storyboard:UIStoryboard {
        return UIStoryboard.init(name: "Onboarding", bundle: nil)
    }
    
    func instantiateViewController<T>(_ context: T) -> UIViewController {
        let loginViewController = storyboard.instantiateViewController(withIdentifier: LoginViewControllerIdentifier) as! LoginViewController
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(wireframe: self, view: loginViewController, interactor: interactor)
        loginViewController.presenter = presenter
        return loginViewController
    }

}

// MARK: - Login Wireframe Interface Requirements -
extension LoginWireframe {
    
    func navigateToHomeScreen() {

        let window = UIApplication.shared.windows.first!
        UIView.transition(with: window,
            duration: 0.5,
            options: UIViewAnimationOptions.transitionFlipFromBottom,
            animations: { () -> Void in

                let rootNavigationController = UINavigationController()
                let tabbarWireframe = TabbarWireframe()
                
                tabbarWireframe.navigationController = rootNavigationController
                tabbarWireframe.pushOnNavigationController()
                
                window.rootViewController = rootNavigationController

            },
            completion: { _ in
            
            })
    }
}
