//
//  ViperModue.swift
//  Viper2
//
//  Created by Henry on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

protocol Router: class {
    weak var presenter: Presenter! { get set }
    var view: UserInterface! { get }
}

protocol UserInterface: class {
    var presenter: Presenter! { get set }
}

protocol Presenter: class {
    var interactor: Interactor! { get set }
    weak var view: UserInterface! { get set }
    var router: Router! { get set }
}

protocol Interactor: class {
    weak var presenter: Presenter! { get set }
}

protocol ViperModule {
    var router: Router { get }
    var view: UserInterface { get }
    var presenter: Presenter { get }
    var interactor: Interactor { get }
}
