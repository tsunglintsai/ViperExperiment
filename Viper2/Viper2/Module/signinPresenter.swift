//
//  signinPresenter.swift
//  Viper2
//
//  Created Henry on 9/9/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class signinPresenter: signinPresenterProtocol {

    weak private var view: signinViewProtocol?
    var interactor: signinInteractorProtocol?
    private let router: signinWireframeProtocol

    init(interface: signinViewProtocol, interactor: signinInteractorProtocol?, router: signinWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
