//
//  HomeInterfaces.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation

// MARK: - Home Wireframe Interface -
protocol HomeWireframeInterface: WireframeInterface {
}

// MARK: - Home View Interface -
protocol HomeViewInterface: ViewInterface {
    var presenter: HomeViewDelegateInterface! { get set }
}

// MARK: - Home View Delegate (Presenter) Interface -
protocol HomeViewDelegateInterface: PresenterInterface {
    
    var _wireframe: HomeWireframeInterface { get }
    unowned var _view: HomeViewInterface { get }
    var _interactor: HomeInteractorInterface? { get }
    
}

// MARK: - Home Interactor Interface -
protocol HomeInteractorInterface: InteractorInterface {
}
