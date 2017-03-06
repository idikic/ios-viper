//
//  SettingsWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Base Wireframe Interface Requirements -
final class SettingsWireframe: SettingsWireframeInterface {
    
    weak var navigationController: UINavigationController?
    weak var viewController: UIViewController?
    
    var storyboard:UIStoryboard {
        return UIStoryboard.init(name: "Settings", bundle: nil)
    }
    
    func instantiateViewController<T>(_ context: T) -> UIViewController {
        let settingsViewController = storyboard.instantiateViewController(withIdentifier: SettingsViewControllerIdentifier) as! SettingsViewController
        let interactor = SettingsInteractor()
        let presenter = SettingsPresenter(wireframe: self, view: settingsViewController, interactor: interactor)
        settingsViewController.presenter = presenter
        return settingsViewController
    }

}

// MARK: - Settings Wireframe Interface Requirements -
extension SettingsWireframe {
}
