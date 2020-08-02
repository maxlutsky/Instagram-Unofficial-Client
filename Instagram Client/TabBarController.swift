//
//  TabBarController.swift
//  Instagram Client
//
//  Created by Max on 02/08/2020.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createTabBar()
    }
    
    func createTabBar(){
        let feedVC = FeedViewController()
        feedVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        let profileVC = ProfileViewController()
        profileVC.tabBarItem = UITabBarItem(title: "My Profile", image: UIImage(named: "profile"), selectedImage: UIImage(named: "profile"))

        let viewControllerList = [ feedVC, profileVC ]
        viewControllers = viewControllerList
    }
}


