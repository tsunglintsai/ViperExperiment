//
//  RootRouter.swift
//  Viper2
//
//  Created by Henry Tsai on 9/7/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation
import UIKit
import Viper

class RootRouter {
    weak var view: RootView?
    var window: UIWindow
    init(view: RootView) {
        self.view = view
        window = UIWindow(frame: UIScreen.main.bounds)
        initRootContainer()
    }
}

extension RootRouter: Router {
    
}

extension RootRouter {
    func initRootContainer() {
        view?.view.frame = window.bounds
        view?.view.backgroundColor = UIColor.white
        window.rootViewController = view
        window.makeKeyAndVisible()
        print("container initlized")
    }
    
    func showLogout() {
        guard let view = view else { return }
        let module = LogoutModule()
        guard let newView = module.view as? UIViewController else { return }
        newView.willMove(toParentViewController: view)
        view.addChildViewController(newView)
        newView.view.frame = view.view.bounds
        view.view.addSubview(newView.view)
        newView.didMove(toParentViewController: view)
        (module.router as? LogoutRouter)?.moduleDelegate = self
        (module.interactor as? LogoutInteractor)?.moduleInitialized()
    }
    
    func showLogin() {
        print("show login")
    }
}

extension RootRouter: LogoutModuleDelegate {
    func signInComplete() {
        view?.childViewControllers.forEach{ (viewController) in
            viewController.willMove(toParentViewController: nil)
            viewController.view.removeFromSuperview()
            viewController.removeFromParentViewController()
        }
        showLogin()
    }
}
