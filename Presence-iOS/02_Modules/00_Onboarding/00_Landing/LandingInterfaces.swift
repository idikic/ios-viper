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
    var presenter: LandingViewDelegateInterface { get set }
}

// MARK: - Landing View Delegate (Presenter) Interface -
protocol LandingViewDelegateInterface: PresenterInterface {
    func didPressLoginButton()
}

// MARK: - Landing Interactor Interface -
protocol LandingInteractorInterface: InteractorInterface {
}