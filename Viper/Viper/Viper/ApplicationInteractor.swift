//
//  ApplicationInteractor.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

protocol ApplicationInteractorOutput {
    
}

protocol ApplicationInteractorInput {
    var applicationState: ApplicationState { get set }
}

enum ApplicationState {
    case active
    case backgrounded
}

struct ApplicationInteractor {
    var presentor: ApplicationInteractorOutput?
    var applicationState: ApplicationState = .active
}

extension ApplicationInteractor: ApplicationInteractorInput {
    
}
