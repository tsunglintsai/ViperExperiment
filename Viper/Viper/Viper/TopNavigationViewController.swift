//
//  TopNavigationViewController.swift
//  Viper
//
//  Created by Henry on 9/5/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import UIKit


protocol TopNavigationViewEventHandler {
    func viewDidLoad()
}

protocol TopNavigationViewProtocol: class {
    func loadViewControllers(number: Int)
}

class TopNavigationViewController: UIViewController {
    var topNavigationViewEventHandler: TopNavigationViewEventHandler?
    fileprivate var tabBarViewController = UITabBarController()
    fileprivate var navigationControllers = [UINavigationController]()
    
    init() {
        super.init(nibName:nil, bundle:nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarViewController.viewControllers = navigationControllers
        view.backgroundColor = UIColor.green
        tabBarViewController.view.frame = view.frame
        tabBarViewController.view.backgroundColor = UIColor.purple
        view.addSubview(tabBarViewController.view)
        topNavigationViewEventHandler?.viewDidLoad()
    }
}

extension TopNavigationViewController: TopNavigationViewProtocol {
    func loadViewControllers(number: Int) {
        var viewControllers = [UINavigationController]()
        for _ in 0..<number {
            let navigationController = UINavigationController()
            viewControllers.append(navigationController)
        }
        tabBarViewController.viewControllers = viewControllers
        for i in 0..<number {
            tabBarViewController.tabBar.items?[i].title = "Tab \(i)"
        }
    }
}
