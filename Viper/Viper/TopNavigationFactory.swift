//
//  TopNavigationFactory.swift
//  Viper
//
//  Created by Henry on 9/5/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit

struct TopNavigationFactory {
    var listFactory = ListFactory()

    func createTopNavigationViewController() -> (UIViewController, TopNavigationRouter) {
        let topNavigationViewController = TopNavigationViewController()
        let router = linkComponents(topNavigationViewController: topNavigationViewController)
        return (topNavigationViewController, router)
    }
    
    func linkComponents(topNavigationViewController: TopNavigationViewController) -> TopNavigationRouter {
        let router = TopNavigationRouter()
        var interactor = TopNavigationInteractor()
        let presenter = TopNavigationPresenter(view: topNavigationViewController, router: router, interactor: interactor)
        topNavigationViewController.topNavigationViewEventHandler = presenter
        interactor.output = presenter
        return router
    }
}


