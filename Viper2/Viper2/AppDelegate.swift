//
//  AppDelegate.swift
//  Viper2
//
//  Created by Henry on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit
import Viper

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    fileprivate var rootModule: RootModule?
    fileprivate var applicationDelegate: UIApplicationDelegate?
}

extension AppDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        rootModule = RootModule.init()
        applicationDelegate = rootModule?.interactor as? UIApplicationDelegate
        return applicationDelegate?.application?(application, didFinishLaunchingWithOptions: launchOptions) ?? false
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        applicationDelegate?.applicationWillResignActive?(application)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        applicationDelegate?.applicationDidEnterBackground?(application)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        applicationDelegate?.applicationWillEnterForeground?(application)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        applicationDelegate?.applicationDidBecomeActive?(application)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        applicationDelegate?.applicationWillTerminate?(application)
    }
}

