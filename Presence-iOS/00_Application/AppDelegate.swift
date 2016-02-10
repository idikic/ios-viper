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

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Override point for customization after application launch.
        setupWireframe()

        return true
    }

}

extension AppDelegate {
    
    func setupWireframe() {

        window = UIWindow(frame: UIScreen.mainScreen().bounds)

        let rootNavigationController = UINavigationController()
        let landingWireframe = LandingWireframe()

        landingWireframe.navigationController = rootNavigationController
        landingWireframe.pushOnNavigationController()

        window?.rootViewController = rootNavigationController
        window?.makeKeyAndVisible()

    }

}

