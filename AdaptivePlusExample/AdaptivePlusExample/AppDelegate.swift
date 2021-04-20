//
//  AppDelegate.swift
//  AdaptivePlusExample
//
//  Created by Yerassyl Yerlanov on 20.04.2021.
//

import UIKit
import AdaptivePlus

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // Use here your own apiKey generated from AdaptivePlus admin panel
    let apiKey = "uHMYZLfGaEFPyynhwJyzAHyfjXUlrGhblTtxWduqtCDMLxiDHIMGFpXzpLGIehps"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        AdaptivePlus.instance.initialize(settings: AdaptivePlusSettings(apiKey: apiKey))
        // Set user properties which will be idendified by AdaptivePlus
        let properties = AdaptivePlusUserProperties(
            userId: UIDevice.current.identifierForVendor?.uuidString ?? "Unknown device id",
            gender: .male,
            age: 20)
        AdaptivePlus.instance.start(properties: properties)

        return true
    }
    

}
