//
//  LandingInterfaces.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation

// MARK: - Landing Wireframe Interface -
protocol LandingWireframeInterface: WireframeInterface {
    func navigateToLoginScreen()
}

// MARK: - Landing View Interface -
protocol LandingViewInterface: ViewInterface {
    var presenter: LandingViewDelegateInterface! { get set }
}

// MARK: - Landing View Delegate (Presenter) Interface -
protocol LandingViewDelegateInterface: PresenterInterface {

    var _wireframe: LandingWireframeInterface { get }
    unowned var _view: LandingViewInterface { get }
    var _interactor: LandingInteractorInterface? { get }

    func didPressLoginButton()

}

// MARK: - Landing Interactor Interface -
protocol LandingInteractorInterface: InteractorInterface {
}