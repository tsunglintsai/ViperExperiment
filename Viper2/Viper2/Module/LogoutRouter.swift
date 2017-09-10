//
//  LogoutRouter.swift
//  Viper2
//
//  Created by Henry on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import Viper

class LogoutRouter {
    weak var view: LogoutView?
    weak var moduleDelegate: LogoutModuleDelegate?
}

extension LogoutRouter: Router {
    
}

extension LogoutRouter {
    func showWelcome() {
        guard let view = view else { return }
        let module = WelcomeModule()
        guard let newView = module.view as? UIViewController else { return }
        newView.willMove(toParentViewController: view)
        view.addChildViewController(newView)
        newView.view.frame = view.view.bounds
        view.view.addSubview(newView.view)
        newView.didMove(toParentViewController: view)
        (module.router as? WelcomeRouter)?.welcomeModuleDelegate = self
        (module.interactor as? WelcomeInteractor)?.moduleInitialized()

    }
    
    func showSignin() {
        
    }
}

extension LogoutRouter: WelcomeModuleDelegate {
    func dismissWelcome() {
        view?.childViewControllers.forEach{ (viewController) in
            viewController.willMove(toParentViewController: nil)
            viewController.view.removeFromSuperview()
            viewController.removeFromParentViewController()
        }
        showSignin()
    }
}


