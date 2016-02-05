//
//  TabbarInterfaces.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation

// MARK: - Tabbar Wireframe Interface -
protocol TabbarWireframeInterface: WireframeInterface {
}

// MARK: - Tabbar View Interface -
protocol TabbarViewInterface: ViewInterface {
    var presenter: TabbarViewDelegateInterface! { get set }
}

// MARK: - Tabbar View Delegate (Presenter) Interface -
protocol TabbarViewDelegateInterface: PresenterInterface {
    
    var _wireframe: TabbarWireframeInterface { get }
    unowned var _view: TabbarViewInterface { get }
    var _interactor: TabbarInteractorInterface? { get }

}

// MARK: - Tabbar Interactor Interface -
protocol TabbarInteractorInterface: InteractorInterface {
}