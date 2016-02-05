//
//  TabbarWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

final class TabbarWireframe: TabbarWireframeInterface {
    
    // MARK: Base Wireframe Interface Requirements
    weak var navigationController: UINavigationController?
    weak var viewController: UIViewController?
    
    var storyboard:UIStoryboard {
        return UIStoryboard.init(name: "Tabbar", bundle: nil)
    }
    
    private lazy var _wireframes: [WireframeInterface] = [
        HomeWireframe(navigationController: UINavigationController())
    ]

    func instantiateViewController<T>(context: T?) -> UIViewController {
        let tabbarController = storyboard.instantiateViewControllerWithIdentifier(TabbarControllerIdentifier) as! TabbarController
        let interactor = TabbarInteractor()
        let presenter = TabbarPresenter(wireframe: self, view: tabbarController, interactor: interactor)
        
        tabbarController.presenter = presenter
        tabbarController.viewControllers = _wireframes.flatMap { $0.navigationController }

        return tabbarController
    }

}

extension TabbarWireframe {
    
    // MARK: Tabbar Wireframe Interface Requirements
    
}