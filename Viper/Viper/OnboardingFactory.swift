//
//  OnboardingFactory.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

struct OnboardingFactory {
    func createOnBoardingViewController(routerDelegate: OnboardingRouterDelegate) -> UIViewController {
        let viewController = OnboardingViewController()
        var router = OnboardingRouter()
        router.delegate = routerDelegate
        let interactor = OnboardingInteractor()
        let presenter = OnboardingPresenter(view: viewController, router: router, interactor: interactor)
        viewController.viewEventDelegate = presenter
        interactor.output = presenter
        return viewController
    }
}

