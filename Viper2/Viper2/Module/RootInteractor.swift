//
//  RootInteractor.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

class RootInteractor: NSObject {
    var presenter: RootInteractorOuput?
    var userState: UserState = .logout
    var entityManager: EntityManager
    init(entityManager: EntityManager) {
        self.entityManager = entityManager
        super.init()
    }
}

enum UserState {
    case logout
    case login
}

extension RootInteractor {
    var userData: UserData {
        return entityManager.gerUserData()
    }
    func initlizaeApp() {
        // init persistence
        
        // call api
        if userData.userToken == nil {
            userState = .logout
        } else {
            userState = .login
        }
        // init user state
        initUserState(userState: userState)
    }
    
    func initUserState(userState: UserState) {
        switch userState {
        case .login:
            presenter?.enterLoginState()
        case .logout:
            presenter?.enterLogoutState()
        }
    }
}

extension RootInteractor: Interactor {
    
}

extension RootInteractor: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        initlizaeApp()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
    }
}
