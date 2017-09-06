//
//  OnboardingViewController.swift
//  Viper
//
//  Created by Henry on 9/6/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

protocol OnboardingViewEventDelegate: class {
    func didTapDismiss()
}

class OnboardingViewController: UIViewController {
    var viewEventDelegate: OnboardingViewEventDelegate?
    
    init() {
        super.init(nibName:nil, bundle:nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("")
    }
    
    func setup() {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 44))
        button.center = view.center
        button.backgroundColor = UIColor.green
        button.addTarget(self, action: #selector(didTapDismiss), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func didTapDismiss() {
        viewEventDelegate?.didTapDismiss()
    }
}

extension OnboardingViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

extension OnboardingViewController: OnboardingViewProtocol {
    
}
