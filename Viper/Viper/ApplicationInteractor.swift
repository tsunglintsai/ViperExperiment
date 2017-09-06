//
//  ApplicationInteractor.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

protocol ApplicationInteractorOutput: class {
    func applicationDidLaunch()
    func applicationInitUI()
    func enterOnboarding()
}

protocol ApplicationInteractorInput {
    var applicationState: ApplicationState { get set }
}

enum ApplicationState {
    case active
    case backgrounded
}

class ApplicationInteractor: NSObject {
    var applicationState: ApplicationState = .active
    var presentor: ApplicationInteractorOutput?
    var persistence: PersistenceProtocol?
}

extension ApplicationInteractor {
    var shouldShowOnBoarding: Bool {
        let userData = persistence?.getUserData()
        return !(userData?.hasSeenOnboarding ?? false)
    }
    
    func initApplication() {
        Promise.first { completion in
            DispatchQueue.main.async {
                self.presentor?.applicationDidLaunch()
                completion(true)
            }
        }.then { [weak self] completion  in
            // initiailze persistence
            self?.persistence = PersistenceWithUserInfo()
            completion(true)
        }.then { completion in
            completion(true)
        }.then { completion in
            DispatchQueue.main.async {
                self.initApplicationUI()
                completion(true)
            }
        }.run()
    }
    
    func initApplicationUI() {
        if shouldShowOnBoarding {
            self.presentor?.enterOnboarding()
        } else {
            self.presentor?.applicationInitUI()
        }
    }
    
}

extension ApplicationInteractor: ApplicationInteractorInput { }

extension ApplicationInteractor: ApplicationEventHandler {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        initApplication()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) { }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        applicationState = .backgrounded
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) { }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        applicationState = .active
    }
    
    func applicationWillTerminate(_ application: UIApplication) {}

}
