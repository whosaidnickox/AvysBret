//
//  AvysBretApp.swift
//  AvysBret
//
//  Created by Nicolae Chivriga on 02/05/2025.
//

import SwiftUI

@main
struct AvysBretApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ZigrujiView()
        }
    }
}
