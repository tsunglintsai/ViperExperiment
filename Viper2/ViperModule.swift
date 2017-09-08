//
//  ViperModue.swift
//  Viper2
//
//  Created by Henry on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

public protocol Router: class {
}

public protocol UserInterface: class {
}

public protocol Presenter: class {
}

public protocol Interactor: class {
}

public protocol ViperModule {
    var router: Router { get }
    var view: UserInterface { get }
    var presenter: Presenter { get }
    var interactor: Interactor { get }
}
