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
    weak var navigationController: UINavigationController? { get set }
    weak var viewController: UIViewController? { get set }
    
    func instantiateViewController() -> UIViewController
    func instantiateViewController<T>(context: T?) -> UIViewController
}

// MARK: - Base Wireframe Interface Default Implementation -
extension WireframeInterface {
    
    // MARK: PUSH
    func pushViewController() {
        navigationController?.pushViewController(instantiateViewController(), animated: true)
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
        viewController.presentViewController(instantiateViewController(), animated: true, completion: nil)
    }

    func presentFromViewController<T>(viewController: UIViewController, context: T?) {
        viewController.presentViewController(instantiateViewController(T), animated: true, completion: nil)
    }
    
    // MARK: DISMISS
    func dismissViewController() {
        viewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}