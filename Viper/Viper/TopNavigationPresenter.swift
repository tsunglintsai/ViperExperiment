//
//  TopNavigationPresenter.swift
//  Viper
//
//  Created by Henry on 9/5/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

struct TopNavigationPresenter {
    weak var view: TopNavigationViewProtocol?
    var router: TopNavigationRouter
    var interactor: TopNavigationInteractor
}

extension TopNavigationPresenter: TopNavigationViewEventHandler {
    func viewDidLoad() {
        view?.loadViewControllers(number: 4)
    }
}

extension TopNavigationPresenter: TopNavigationInteractorOutput {
    
}
