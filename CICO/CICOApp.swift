//
//  CICOApp.swift
//  CICO
//
//  Created by Macbook  on 24/08/2023.
//

import UIKit
import Firebase // <- Don't forget this

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  // ...
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()  // <- Initialization here
    return true
  }
  
  // ...
}

