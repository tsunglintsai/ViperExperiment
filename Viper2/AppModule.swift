//
//  AppModule.swift
//  ViperCore
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

public struct AppModule {
    var name: AppModule.Name
    // MARK: ViperModule protocol properties
    public fileprivate(set) var interactor: Interactor
    public fileprivate(set) var presenter: Presenter
    public fileprivate(set) var router: Router
    public fileprivate(set) var view: UserInterface
    public init(name: AppModule.Name, interactor: Interactor, presenter: Presenter, router: Router, view: UserInterface) {
        self.interactor = interactor
        self.presenter = presenter
        self.router = router
        self.view = view
        self.name = name
    }
}

public extension AppModule {
    public struct Name {
        public fileprivate(set) var name: String
        public init(name: String) {
            self.name = name
        }
    }
}
