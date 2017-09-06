//
//  OnboardingInteractor.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

protocol OnboardingInteractorInput {
    
}

protocol OnboardingInteractorOutput: class {
    
}

class OnboardingInteractor {
    weak var output: OnboardingInteractorOutput?
}

extension OnboardingInteractor: OnboardingInteractorInput {
    
}
