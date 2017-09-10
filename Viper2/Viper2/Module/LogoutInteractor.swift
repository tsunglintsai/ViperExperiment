//
//  LogoutInteractor.swift
//  Viper2
//
//  Created by Henry on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

class LogoutInteractor {
    weak var presenter: LogoutPresenter?
    var entityManager: EntityManager
    init(entityManager: EntityManager) {
        self.entityManager = entityManager
    }
}

extension LogoutInteractor: Interactor {
    
}

extension LogoutInteractor {
    var userData: UserData {
        return entityManager.gerUserData()
    }
    
    var hasSeenWelcome: Bool {
        return userData.hasSeenWelcome
    }
    
    func moduleInitialized() {
        if hasSeenWelcome {
            presenter?.showSignin()
        } else {
            presenter?.showWelcome()
        }
    }
}
