//
//  WelcomeView.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit
import Viper

class WelcomeView: UIViewController {
    var presender: WelcomePresenter
    init(presenter: WelcomePresenter) {
        self.presender = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
}

extension WelcomeView: UserInterface {
    
}


extension WelcomeView {
    func initUI() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
        button.center = view.center
        button.setTitle("dismiss welcome", for: .normal)
        button.backgroundColor = UIColor.green
        button.addTarget(self, action: #selector(dismissButtonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func dismissButtonTapped() {
        presender.dismissButtonTapped()
    }
}
