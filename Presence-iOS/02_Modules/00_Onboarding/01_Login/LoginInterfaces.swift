//
//  LoginInterfaces.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation

// MARK: - Landing Wireframe Interface -
protocol LoginWireframeInterface: WireframeInterface {
    func navigateToHomeScreen()
}

// MARK: - Landing View Interface -
protocol LoginViewInterface: ViewInterface {
    var presenter: LoginViewDelegateInterface! { get set }
}

// MARK: - Landing View Delegate (Presenter) Interface -
protocol LoginViewDelegateInterface: PresenterInterface {
    
    var _wireframe: LoginWireframeInterface { get }
    unowned var _view: LoginViewInterface { get }
    var _interactor: LoginInteractorInterface? { get }
    
    func didPressSignInButton()
}

// MARK: - Landing Interactor Interface -
protocol LoginInteractorInterface: InteractorInterface {
}
