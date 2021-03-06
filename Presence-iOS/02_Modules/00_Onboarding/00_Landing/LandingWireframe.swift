//
//  LandingWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Base Wireframe Interface Requirements -
final class LandingWireframe: LandingWireframeInterface {
    
    weak var navigationController: UINavigationController?
    weak var viewController: UIViewController?

    var storyboard:UIStoryboard {
        return UIStoryboard.init(name: "Onboarding", bundle: nil)
    }

    func instantiateViewController<T>(context: T) -> UIViewController {
        let landingViewController = storyboard.instantiateViewControllerWithIdentifier(LandingViewControllerIdentifier) as! LandingViewController
        let interactor = LandingInteractor()
        let presenter = LandingPresenter(wireframe: self, view: landingViewController, interactor: interactor)
        landingViewController.presenter = presenter
        return landingViewController
    }

}

// MARK: - Landing Wireframe Interface Requirements -
extension LandingWireframe {

    func navigateToLoginScreen() {

        let loginWireframe = LoginWireframe()
        loginWireframe.navigationController = navigationController
        loginWireframe.pushOnNavigationController()

    }

}