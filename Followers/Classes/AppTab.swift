//
//  AppTabs.swift
//  Followers
//
//  Created by Matt Brown on 11/29/20.
//

import UIKit

enum AppTab: String {
    case search = "Search"
    case favorites = "Favorites"
    
    private var tabBarItem: UITabBarItem {
        switch self {
        case .search:
            return UITabBarItem(tabBarSystemItem: .search, tag: 0)
        case .favorites:
            return UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        }
    }
    
    private var rootViewController: UIViewController {
        switch self {
        case .search:
            return SearchViewController()
        case .favorites:
            return FavoritesListViewController()
        }
    }
    
    var navigationController: UINavigationController {
        let rootViewController = self.rootViewController
        rootViewController.title = self.rawValue
        rootViewController.tabBarItem = self.tabBarItem
        return UINavigationController(rootViewController: rootViewController)
    }
}
