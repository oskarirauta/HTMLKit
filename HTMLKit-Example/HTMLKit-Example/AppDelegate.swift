//
//  AppDelegate.swift
//  HTMLKit-Example
//
//  Created by Oskari Rauta on 11.02.20.
//  Copyright © 2020 Oskari Rauta. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var htmlVC: HTMLViewController = HTMLViewController()

    lazy var window: UIWindow? = {
        var _window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
        _window?.backgroundColor = UIColor.white
        _window?.rootViewController = UINavigationController(rootViewController: self.htmlVC)
        _window?.makeKeyAndVisible()
        return _window
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let _ = self.window
        return true
    }

}

