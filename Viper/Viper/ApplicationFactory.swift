//
//  ApplicationFactory.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

protocol ApplicationEventHandler: UIApplicationDelegate { }

struct ApplicationFactory {
    func createApplication() -> ApplicationEventHandler {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let interactor = ApplicationInteractor()
        let router = ApplicationRouter(onboardingFactory: OnboardingFactory(), topNavigationFactory: TopNavigationFactory(), topNavigationRouter: nil, window: window)
        let presentor = ApplicationPresentor(interactor: interactor, router: router)
        interactor.presentor = presentor
        return interactor
    }
}
