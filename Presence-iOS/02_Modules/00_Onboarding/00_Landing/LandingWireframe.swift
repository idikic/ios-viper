//
//  LandingWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

class LandingWireframe: LandingWireframeInterface {
    
    // MARK: Base Wireframe Interface Requirements
    weak var navigationController: UINavigationController?
    weak var viewController: UIViewController?

    var storyboard:UIStoryboard {
        return UIStoryboard.init(name: "Onboarding", bundle: nil)
    }

    func instantiateViewController<T>(context: T?) -> UIViewController {
        let landingViewController = storyboard.instantiateViewControllerWithIdentifier(LandingViewControllerIdentifier)
        return landingViewController
    }

}

extension LandingWireframeInterface {
    
    // MARK: Landing Wireframe Interface Requirements
    func navigateToLoginScreen() {

    }
}