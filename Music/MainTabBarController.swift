//
//  MainTabBarController.swift
//  Music
//
//  Created by Evgeniy Kostin on 16.08.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let searchVC = SearchViewController()
        let navigationVC = UINavigationController(rootViewController: searchVC)
        let libraryVC = ViewController()
        
        viewControllers = [
            navigationVC,
            libraryVC
        ]
    }
}
 
