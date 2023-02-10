//
//  AppDelegate.swift
//  Chat_app
//
//  Created by Corrigan, John on 1/29/23.
//

import Foundation
import SwiftUI
import UIKit
import Firebase


class AppDelegate: NSObject, UIApplicationDelegate {
    
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


