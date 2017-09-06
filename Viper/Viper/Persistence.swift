//
//  Persistence.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

protocol PersistenceProtocol {
    func getUserData() -> UserData
    func setSeenOnboarding()
}

struct PersistenceWithUserInfo {
    static fileprivate let seenOnboardingKey = "SeenOnboardingKey"
    fileprivate var userDefaults = UserDefaults.standard
}

extension PersistenceWithUserInfo: PersistenceProtocol {
    func getUserData() -> UserData {
        let seenOnboarding = userDefaults.bool(forKey: PersistenceWithUserInfo.seenOnboardingKey)
        let userData = UserData(hasSeenOnboarding: seenOnboarding)
        return userData
    }
    
    func setSeenOnboarding() {
        userDefaults.set(true, forKey: PersistenceWithUserInfo.seenOnboardingKey)
        userDefaults.synchronize()
    }
}
