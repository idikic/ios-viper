//
//  SettingsWireframe.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation
import UIKit

final class SettingsWireframe: SettingsWireframeInterface {
    
    // MARK: Base Wireframe Interface Requirements
    weak var navigationController: UINavigationController?
    weak var viewController: UIViewController?
    
    var storyboard:UIStoryboard {
        return UIStoryboard.init(name: "Settings", bundle: nil)
    }
    
    func instantiateViewController<T>(context: T?) -> UIViewController {
        let settingsViewController = storyboard.instantiateViewControllerWithIdentifier(SettingsViewControllerIdentifier) as! SettingsViewController
        let interactor = SettingsInteractor()
        let presenter = SettingsPresenter(wireframe: self, view: settingsViewController, interactor: interactor)
        settingsViewController.presenter = presenter
        return settingsViewController
    }

}

extension SettingsWireframe {
    
    // MARK: Settings Wireframe Interface Requirements
    
}
