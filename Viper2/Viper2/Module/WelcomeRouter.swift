//
//  WelcomeRouter.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

protocol WelcomeRouterDelegate: class {
    func finishWelcome()
}

class WelcomeRouter {
    weak var view: UserInterface?
    weak var delegate: WelcomeRouterDelegate?
    init(view: UserInterface) {
        self.view = view
    }
}

extension WelcomeRouter: Router {
    
}
