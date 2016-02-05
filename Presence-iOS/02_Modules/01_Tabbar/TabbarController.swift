//
//  TabbarController.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import UIKit

final class TabbarController: UITabBarController, TabbarViewInterface {
    
    // MARK: Landing view interface requirements
    var presenter: TabbarViewDelegateInterface!

    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
