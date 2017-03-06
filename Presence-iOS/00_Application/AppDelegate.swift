//
//  AppDelegate.swift
//  Presence-iOS
//
//  Created by Iki on 05/02/16.
//  Copyright © 2016 Infinum. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        setupWireframe()

        return true
    }

}

extension AppDelegate {
    
    func setupWireframe() {

        window = UIWindow(frame: UIScreen.main.bounds)

        let rootNavigationController = UINavigationController()
        let landingWireframe = LandingWireframe()

        landingWireframe.navigationController = rootNavigationController
        landingWireframe.pushOnNavigationController()

        window?.rootViewController = rootNavigationController
        window?.makeKeyAndVisible()

    }

}

