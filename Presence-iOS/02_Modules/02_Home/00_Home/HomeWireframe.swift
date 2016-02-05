//
//  HomeWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Base Wireframe Interface Requirements -
final class HomeWireframe: HomeWireframeInterface {

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

// MARK: - Home Wireframe Interface Requirements -
extension HomeWireframe {
}
