//
//  RootPresenter.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

class RootPresenter {
    var router: RootRouter
    init(router: RootRouter) {
        self.router = router
    }
}

extension RootPresenter: Presenter {
    
}

extension RootPresenter: WelcomeModuleDelegate {
    func dismissWelcome() {
        router.showLogin()
    }
}

extension RootPresenter: RootInteractorOuput {
    func enterLogoutState() {
        router.showLogout()
    }
    
    func enterLoginState() {
        router.showLogin()
    }

}
