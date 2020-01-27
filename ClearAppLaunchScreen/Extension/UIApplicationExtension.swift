//
//  UIApplicationExtension.swift
//  ClearAppLaunchScreen
//
//  Created by Vineet Choudhary on 27/01/20.
//  Copyright © 2020 Developer Insider. All rights reserved.
//

import UIKit

public extension UIApplication {
    func clearLaunchScreenCache() {
        #if DEBUG
        do {
            let launchScreenPath = "\(NSHomeDirectory())/Library/SplashBoard"
            try FileManager.default.removeItem(atPath: launchScreenPath)
        } catch {
            print("Failed to delete launch screen cache - \(error)")
        }
        #endif
    }
}
