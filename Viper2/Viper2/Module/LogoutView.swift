//
//  LogoutView.swift
//  Viper2
//
//  Created by Henry on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

class LogoutView: UIViewController {
    var presenter: LogoutPresenter
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init(presenter: LogoutPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
}

extension LogoutView: UserInterface {
    
}
