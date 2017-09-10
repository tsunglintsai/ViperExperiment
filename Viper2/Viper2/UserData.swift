//
//  UserData.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

struct UserData {
    var hasSeenWelcome: Bool
    var userToken: String?
}

protocol EntityManager {
    func gerUserData() -> UserData
    func saveUserData(userData: UserData)
}

extension UserDefaults: EntityManager {
    var hasSeenWelcomeKey: String {
        return "hasSeenWelcomeKey"
    }
    var userTokenKey: String {
        return "userTokenKey"
    }
    
    func gerUserData() -> UserData {
        let hasSeenWelcome = bool(forKey: hasSeenWelcomeKey)
        let userToken = string(forKey: userTokenKey)
        return UserData(hasSeenWelcome: hasSeenWelcome, userToken: userToken)
    }
    
    func saveUserData(userData: UserData) {
        set(userData.hasSeenWelcome, forKey: hasSeenWelcomeKey)
        set(userData.userToken, forKey: userTokenKey)
        synchronize()
    }

}
