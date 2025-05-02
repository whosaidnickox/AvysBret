//
//  AppDelegate.swift
//  AvysBret
//
//  Created by Nicolae Chivriga on 02/05/2025.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.position
    }
    
    static var position = UIInterfaceOrientationMask.portrait {
        didSet {
            if #available(iOS 16.0, *) {
                UIApplication.shared.connectedScenes.forEach { scene in
                    if let windowScene = scene as? UIWindowScene {
                        windowScene.requestGeometryUpdate(.iOS(interfaceOrientations: position))
                    }
                }
                UIViewController.attemptRotationToDeviceOrientation()
            } else {
                if position == .landscape {
                    UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                } else {
                    UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                }
            }
        }
    }
}
