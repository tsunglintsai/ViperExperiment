//
//  WelcomeRouter.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper


class WelcomeRouter {
    weak var view: UserInterface?
    weak var welcomeModuleDelegate: WelcomeModuleDelegate?
}

extension WelcomeRouter: Router {
    
}

extension WelcomeRouter {
    func dismissWelcome() {
        welcomeModuleDelegate?.dismissWelcome()
    }
}
