//
//  AppDelegate.swift
//  IntegrateDemo
//
//  Created by duong.pham on 10/23/20.
//

import UIKit
import BESDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        BETransportSDK.initSDK(launchOptions: launchOptions, environment: .qa)
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }

    /// VPBank không cần implement function này.
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        BETransportSDK.registerDeviceToken(with: application, deviceToken: deviceToken)
    }

    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        BETransportSDK.didReceiveRemoteNotification(application, didReceiveRemoteNotification: userInfo)
    }
}

