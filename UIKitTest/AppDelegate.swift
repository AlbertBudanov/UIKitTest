//
//  AppDelegate.swift
//  UIKitTest
//
//  Created by Альберт on 16.10.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

//    var window: UIWindow?
//    var navigation = UINavigationController(rootViewController: MyPageViewController())
    
//    Добавляем навигацию
//    var navContriller = UINavigationController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        
//        window? = UIWindow(frame: UIScreen.main.bounds)
//        window?.backgroundColor = UIColor.green
////        window?.makeKeyAndVisible()
//        window?.rootViewController = navigation
//        let viewController = NavigationViewController()
//        self.navContriller = UINavigationController(rootViewController: viewController)
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        self.window?.rootViewController = self.navContriller
//        self.window?.backgroundColor = .black
//        self.window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

