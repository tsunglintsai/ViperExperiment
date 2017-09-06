//
//  TopNavigationRouter.swift
//  Viper
//
//  Created by Henry on 9/5/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

struct Navigation {
    enum Target {
        case list
        case detail(id: String)
        case setting
    }
    var target: Target
}

protocol TopNavigationRouterProtocol {
    
}

struct TopNavigationRouter {

}

extension TopNavigationRouter: TopNavigationRouterProtocol {
    
}
