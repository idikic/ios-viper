//
//  HomePresenter.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation

final class HomePresenter: HomeViewDelegateInterface {
    
    // MARK: - Private Properties -
    internal var _wireframe: HomeWireframeInterface
    internal unowned var _view: HomeViewInterface
    internal var _interactor: HomeInteractorInterface?
    
    // MARK: - Lifecycle -
    init(wireframe: HomeWireframeInterface, view: HomeViewInterface, interactor: HomeInteractorInterface? = nil) {
        self._wireframe = wireframe
        self._view = view
        self._interactor = interactor
    }
    
}

extension HomePresenter {
}