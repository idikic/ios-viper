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
    
    func instantiateViewController() -> UIViewController {
        return UIViewController()
    }
    
    func instantiateViewController<T>(context: T?) -> UIViewController {
        return UIViewController()
    }

}

extension LandingWireframeInterface {
    
    // MARK: Landing Wireframe Interface Requirements
    func navigateToLoginScreen() {

    }
}