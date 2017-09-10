//
//  LogoutPresenter.swift
//  Viper2
//
//  Created by Henry on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

class LogoutPresenter {
    weak var view: LogoutView?
    var router: LogoutRouter
    var interactor: LogoutInteractor
    init(router: LogoutRouter, interactor: LogoutInteractor) {
        self.router = router
        self.interactor = interactor
    }
}

extension LogoutPresenter: Presenter {
    
}

extension LogoutPresenter {
    func showWelcome() {
        router.showWelcome()
    }
    
    func showSignin() {
        router.showSignin()
    }
}
