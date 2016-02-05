//
//  LoginPresenter.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import UIKit

final class LoginPresenter: LoginViewDelegateInterface {
    
    // MARK: - Private Properties -
    internal var _wireframe: LoginWireframeInterface
    internal unowned var _view: LoginViewInterface
    internal var _interactor: LoginInteractorInterface?
    
    // MARK: - Lifecycle -
    init(wireframe: LoginWireframeInterface, view: LoginViewInterface, interactor: LoginInteractorInterface? = nil) {
        self._wireframe = wireframe
        self._view = view
        self._interactor = interactor
    }

}

extension LoginPresenter {
    func didPressSignInButton() {
        _wireframe.navigateToHomeScreen()
    }
}
