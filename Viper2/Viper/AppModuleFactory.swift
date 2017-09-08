//
//  AppModuleFactory.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

public protocol AppModuleFactory {
    func createModule(for name: AppModule.Name) -> ViperModule
}
