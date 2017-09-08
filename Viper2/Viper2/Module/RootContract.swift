//
//  RootContract.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

protocol RootInteractorInput {
    
}

protocol RootInteractorOuput {
    func enterLogoutState()    
    func enterLoginState()
}
