//
//  AppDelegate.swift
//  TrafficLight
//
//  Created by Kirill on 19.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = ViewController()
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

