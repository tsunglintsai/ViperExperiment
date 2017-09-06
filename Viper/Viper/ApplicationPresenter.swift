//
//  ApplicationPresenter.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

class ApplicationPresentor {
    fileprivate weak var interactor: ApplicationInteractor?
    fileprivate var router: ApplicationRouterProtocol
    
    init(interactor: ApplicationInteractor, router: ApplicationRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    func updateApplicationState(state: ApplicationState) {
        interactor?.applicationState = state
    }
}

extension ApplicationPresentor: ApplicationInteractorOutput {
    func applicationDidLaunch() {
        router.initContainer()
    }
    func applicationInitUI() {
        router.initTopView()
    }
    func enterOnboarding() {
        router.displayOnBoarding()
    }
}
