//
//  TabBarViewController.swift
//  Solar Journey
//
//  Created by Mac on 18.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        checkTitle()
    }
    
    private func checkTitle() {
        switch tabBar.selectedItem?.title {
        case "Developers":
            navigationItem.title = "Developers"
        case "Разработчики":
            navigationItem.title = "Разработчики"
        case "Планеты":
            navigationItem.title = "Планеты"
        default:
            navigationItem.title = "Planets"
        }
        
    }
    
    
}
