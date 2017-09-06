//
//  OnboardingPresenter.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

protocol OnboardingViewProtocol: class {
    
}

class OnboardingPresenter {
    weak var view: OnboardingViewProtocol?
    var router: OnboardingRouter
    var interactor: OnboardingInteractor
    init(view: OnboardingViewProtocol, router: OnboardingRouter, interactor: OnboardingInteractor) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

extension OnboardingPresenter: OnboardingViewEventDelegate {
    func didTapDismiss() {
        router.dismissOnboarding()
    }
}

extension OnboardingPresenter: OnboardingInteractorOutput {
    
}
