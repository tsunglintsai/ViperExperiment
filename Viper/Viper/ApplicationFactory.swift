//
//  ApplicationFactory.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

protocol ApplicationEventHandler {
    mutating func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
}

struct ApplicationFactory {
    func createApplication(window: UIWindow) -> ApplicationEventHandler {
        var interactor = ApplicationInteractor()
        let presentor = ApplicationPresentor(interactor: interactor, window: window)
        interactor.presentor = presentor
        return presentor
    }
}
