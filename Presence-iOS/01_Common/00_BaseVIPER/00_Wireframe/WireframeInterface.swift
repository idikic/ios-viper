//
//  WireframeInterface.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Base Wireframe Interface -
protocol WireframeInterface {
    
    // MARK: REQUIRED
    var storyboard:UIStoryboard { get }
    weak var navigationController: UINavigationController? { get set }
    weak var viewController: UIViewController? { get set }

    init()

    func instantiateViewController<T>(context: T?) -> UIViewController

}

// MARK: - Base Wireframe Interface Default Implementation -
extension WireframeInterface {

    // MARK: CONVENIENCE INIT
    init(navigationController: UINavigationController? = nil) {
        self.init()
        self.navigationController = navigationController
    }

    // MARK: PUSH
    func pushViewController() {
        navigationController?.pushViewController(instantiateViewController(Any), animated: true)
    }

    func pushViewController<T>(context: T? = nil) {
        navigationController?.pushViewController(instantiateViewController(T), animated: true)
    }

    // MARK: POP
    func popViewController() {
        navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: PRESENT
    func presentFromViewController(viewController: UIViewController) {
        viewController.presentViewController(instantiateViewController(Any), animated: true, completion: nil)
    }

    func presentFromViewController<T>(viewController: UIViewController, context: T?) {
        viewController.presentViewController(instantiateViewController(T), animated: true, completion: nil)
    }
    
    // MARK: DISMISS
    func dismissViewController() {
        viewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}