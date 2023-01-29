//
//  Chat_appApp.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/25/23.
//

import SwiftUI

@main
struct Chat_appApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
