//
//  LandingPresenter.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import UIKit

final class LandingPresenter: LandingViewDelegateInterface {

    // MARK: - Private Properties -
    internal var _wireframe: LandingWireframeInterface
    internal unowned var _view: LandingViewInterface
    internal var _interactor: LandingInteractorInterface?
    
    // MARK: - Lifecycle -
    init(wireframe: LandingWireframeInterface, view: LandingViewInterface, interactor: LandingInteractorInterface? = nil) {
        self._wireframe = wireframe
        self._view = view
        self._interactor = interactor
    }

}

extension LandingPresenter {
    func didPressLoginButton() {
        _wireframe.navigateToLoginScreen()
    }
}
