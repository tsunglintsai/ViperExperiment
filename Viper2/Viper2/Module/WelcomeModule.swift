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
        let view = RootView()
        let router = WelcomeRouter(view: view)
        let presenter = WelcomePresenter()
        let interactor = WelcomeInteractor()
        self.router = router
        self.view = view
        self.presenter = presenter
        self.interactor = interactor
    }
    
}
