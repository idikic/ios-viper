//
//  TabbarPresenter.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import Foundation

final class TabbarPresenter: TabbarViewDelegateInterface {
    
    // MARK: - Private Properties -
    internal var _wireframe: TabbarWireframeInterface
    internal unowned var _view: TabbarViewInterface
    internal var _interactor: TabbarInteractorInterface?
    
    // MARK: - Lifecycle -
    init(wireframe: TabbarWireframeInterface, view: TabbarViewInterface, interactor: TabbarInteractorInterface? = nil) {
        self._wireframe = wireframe
        self._view = view
        self._interactor = interactor
    }
    
}

extension TabbarPresenter {
}