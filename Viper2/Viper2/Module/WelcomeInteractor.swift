//
//  WelcomeInteractor.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

class WelcomeInteractor {
    weak var presenter: WelcomePresenter?
    var entityManager: EntityManager
    init(entityManager: EntityManager) {
        self.entityManager = entityManager
    }
}

extension WelcomeInteractor: Interactor {
    func moduleInitialized() {
    }
}
