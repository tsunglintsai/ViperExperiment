//
//  AppDelegate.swift
//  Viper
//
//  Created by Henry on 9/5/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
    var applicationEventHandler: ApplicationEventHandler?
}

extension AppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        applicationEventHandler = ApplicationFactory().createApplication()
        return applicationEventHandler?.application?(application, didFinishLaunchingWithOptions: launchOptions) ?? false
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        applicationEventHandler?.applicationWillResignActive?(application)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        applicationEventHandler?.applicationDidEnterBackground?(application)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        applicationEventHandler?.applicationWillEnterForeground?(application)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        applicationEventHandler?.applicationDidBecomeActive?(application)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        applicationEventHandler?.applicationDidBecomeActive?(application)
        
    }
}
