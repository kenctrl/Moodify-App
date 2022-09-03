//
//  TabBarController.swift
//  MoodifyApp
//
//
import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }
    
    func setUpViews() {
        viewControllers = [createTabBarItem(title: "Song of the Day", imageName: "star.circle.fill", viewController: SongOfDayViewController()), createTabBarItem(title: "Moodify!", imageName: "face.smiling", viewController: HomeViewController()), createTabBarItem(title: "Songs", imageName: "music.note", viewController: MovieTableViewController())]
    }
    
    private func createTabBarItem(title: String, imageName: String, viewController: UIViewController) -> UINavigationController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        
        return navController
    }
    
}
