//
//  RootModul.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

struct RootModuleBuilder {
    var router: Router?
    var view: UserInterface?
    var presenter: Presenter?
    var interactor: Interactor?
    typealias BuildThemeClosure = (RootModuleBuilder) -> Void
    init(buildThemeClosure: BuildThemeClosure) {
        buildThemeClosure(self)
    }
}

struct RootModule: ViperModule {
    var router: Router
    var view: UserInterface
    var presenter: Presenter
    var interactor: Interactor
    init?(builder: RootModuleBuilder) {
        guard let router = builder.router, let view = builder.view, let presenter = builder.presenter, let interactor = builder.interactor else { return nil }
        self.router = router
        self.view = view
        self.presenter = presenter
        self.interactor = interactor
    }
    
    init() {
        let view = RootView()
        let router = RootRouter(view: view)
        let presenter = RootPresenter(router: router)
        let interactor = RootInteractor(entityManager: UserDefaults.standard)
        interactor.presenter = presenter
        self.router = router
        self.view = view
        self.presenter = presenter
        self.interactor = interactor
    }
}
