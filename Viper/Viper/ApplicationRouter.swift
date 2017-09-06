//
//  ApplicationRouter.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

protocol ApplicationRouterProtocol {
    mutating func initContainer()
    mutating func initTopView()
    mutating func displayOnBoarding()
}

struct ApplicationRouter {
    var onboardingFactory: OnboardingFactory?
    var topNavigationFactory : TopNavigationFactory?
    var topNavigationRouter : TopNavigationRouter?
    var window: UIWindow
}

extension ApplicationRouter: ApplicationRouterProtocol {
    mutating func initContainer() {
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
    }
    mutating func initTopView() {
        guard let topNavigationFactory = topNavigationFactory else { return }
        let module = topNavigationFactory.createTopNavigationViewController()
        topNavigationRouter = module.1
        window.rootViewController = module.0
    }
    
    mutating func displayOnBoarding() {
        window.rootViewController = onboardingFactory?.createOnBoardingViewController(routerDelegate: self)
    }
}

extension ApplicationRouter: OnboardingRouterDelegate {
    mutating func dismissOnboarding() {
        initTopView()
    }
}
