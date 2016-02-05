//
//  HomeWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

final class HomeWireframe: HomeWireframeInterface {

    // MARK: Base Wireframe Interface Requirements
    weak var navigationController: UINavigationController?
    weak var viewController: UIViewController?

    var storyboard:UIStoryboard {
        return UIStoryboard.init(name: "Home", bundle: nil)
    }

    func instantiateViewController<T>(context: T?) -> UIViewController {
        let homeViewController = storyboard.instantiateViewControllerWithIdentifier(HomeViewControllerIdentifier) as! HomeViewController
        let interactor = HomeInteractor()
        let presenter = HomePresenter(wireframe: self, view: homeViewController, interactor: interactor)
        homeViewController.presenter = presenter
        return homeViewController
    }
    
}

extension HomeWireframe {
    
    // MARK: Home Wireframe Interface Requirements
    
}
