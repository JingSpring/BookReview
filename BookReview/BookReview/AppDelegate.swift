//
//  AppDelegate.swift
//  BookReview
//
//  Created by xjc on 16/4/26.
//  Copyright © 2016年 xjc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
        /**
        底部标签控制栏
        */
        self.window = UIWindow(frame: CGRectMake(0,0,SCREEN_WIDTH,SCREEN_HEIGHT))
        
        let tabbarController = UITabBarController()
        
        let homeController = UINavigationController(rootViewController: HomeViewController())
        let messageController = UINavigationController(rootViewController: MessageViewController())
        let searchController = UINavigationController(rootViewController: SearchViewController())
        let meController = UINavigationController(rootViewController:MeViewController())
        
        tabbarController.viewControllers = [homeController,messageController,searchController,meController]
        
        let tabbarItem1 = UITabBarItem(title: "首页", image: UIImage(named: "tabbar_home"), tag: 1)
        let tabbarItem2 = UITabBarItem(title: "信息", image: UIImage(named: "tabbar_message_center"), tag: 2)
        let tabbarItem3 = UITabBarItem(title: "发现", image: UIImage(named: "tabbar_discover"), tag: 3)
        let tabbarItem4 = UITabBarItem(title: "我", image: UIImage(named: "tabbar_profile"), tag: 4)
        
        homeController.tabBarItem = tabbarItem1
        messageController.tabBarItem = tabbarItem2
        searchController.tabBarItem = tabbarItem3
        meController.tabBarItem = tabbarItem4
        
        homeController.tabBarController?.tabBar.tintColor = UIColor.greenColor()
        
        self.window?.rootViewController = tabbarController
        self.window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

