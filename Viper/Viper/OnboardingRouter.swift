//
//  OnboardingRouter.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

protocol OnboardingRouterDelegate {
    mutating func dismissOnboarding()
}

protocol OnboardingRouterProtocol {
    mutating func dismissOnboarding()
}

struct OnboardingRouter {
    var delegate: OnboardingRouterDelegate?
}

extension OnboardingRouter: OnboardingRouterProtocol {
    mutating func dismissOnboarding() {
        delegate?.dismissOnboarding()
    }
}

