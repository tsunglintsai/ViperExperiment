//
//  WelcomeModule.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

protocol WelcomeModuleDelegate: class {
    func dismissWelcome()
}

class WelcomeModule: ViperModule {
    var router: Router
    var view: UserInterface
    var presenter: Presenter
    var interactor: Interactor
    init() {
        let router = WelcomeRouter()
        let interactor = WelcomeInteractor(entityManager: UserDefaults.standard)
        let presenter = WelcomePresenter(router: router, interactor: interactor)
        let view = WelcomeView(presenter: presenter)
        presenter.view = view
        router.view = view
        self.router = router
        self.view = view
        self.presenter = presenter
        self.interactor = interactor
    }
    
}
