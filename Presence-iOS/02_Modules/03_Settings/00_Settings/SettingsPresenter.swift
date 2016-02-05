//
//  SettingsPresenter.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation

final class SettingsPresenter: SettingsViewDelegateInterface {
    
    // MARK: - Private Properties -
    internal var _wireframe: SettingsWireframeInterface
    internal unowned var _view: SettingsViewInterface
    internal var _interactor: SettingsInteractorInterface?
    
    // MARK: - Lifecycle -
    init(wireframe: SettingsWireframeInterface, view: SettingsViewInterface, interactor: SettingsInteractorInterface? = nil) {
        self._wireframe = wireframe
        self._view = view
        self._interactor = interactor
    }
    
}

extension SettingsPresenter {
}
