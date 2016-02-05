//
//  SettingsInterfaces.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation

// MARK: - Settings Wireframe Interface -
protocol SettingsWireframeInterface: WireframeInterface {
}

// MARK: - Settings View Interface -
protocol SettingsViewInterface: ViewInterface {
    var presenter: SettingsViewDelegateInterface! { get set }
}

// MARK: - Settings View Delegate (Presenter) Interface -
protocol SettingsViewDelegateInterface: PresenterInterface {
    
    var _wireframe: SettingsWireframeInterface { get }
    unowned var _view: SettingsViewInterface { get }
    var _interactor: SettingsInteractorInterface? { get }

}

// MARK: - Settings Interactor Interface -
protocol SettingsInteractorInterface: InteractorInterface {
}
