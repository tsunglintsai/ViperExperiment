//
//  LogoutModule.swift
//  Viper2
//
//  Created by Henry on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

protocol LogoutModuleDelegate: class {
    func signInComplete()
}

class LogoutModule: ViperModule {
    var router: Router
    var view: UserInterface
    var presenter: Presenter
    var interactor: Interactor
    init(delegate: LogoutModuleDelegate? = nil) {
        let router = LogoutRouter()
        let interactor = LogoutInteractor(entityManager: UserDefaults.standard)
        let presenter = LogoutPresenter(router: router, interactor: interactor)
        let view = LogoutView(presenter: presenter)
        presenter.view = view
        router.view = view
        interactor.presenter = presenter
        router.moduleDelegate = delegate
        self.router = router
        self.view = view
        self.presenter = presenter
        self.interactor = interactor
    }
}
