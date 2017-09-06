//
//  ApplicationPresenter.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

struct ApplicationPresentor {
    var interactor: ApplicationInteractor
    var window: UIWindow?
    
    mutating func updateApplicationState(state: ApplicationState) {
        interactor.applicationState = state
    }
}

extension ApplicationPresentor: ApplicationEventHandler {
    mutating func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        updateApplicationState(state: .active)
        return true
    }
}

extension ApplicationPresentor: ApplicationInteractorOutput {
    
}
