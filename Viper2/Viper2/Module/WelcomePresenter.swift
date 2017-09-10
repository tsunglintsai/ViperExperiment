//
//  WelcomePresenter.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

class WelcomePresenter {
    var router: WelcomeRouter
    var interactor: WelcomeInteractor
    weak var view: WelcomeView?
    init(router: WelcomeRouter, interactor: WelcomeInteractor) {
        self.router = router
        self.interactor = interactor
    }
}

extension WelcomePresenter: Presenter {
    
}

extension WelcomePresenter {
    func dismissButtonTapped() {
        router.dismissWelcome()
    }
}
