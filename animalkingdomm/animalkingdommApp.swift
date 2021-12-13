//
//  animalkingdommApp.swift
//  animalkingdomm
//
//  Created by PMStudent on 11/9/21.
//

import SwiftUI
@main
struct animalkingdommApp: App {
    
//    @Binding public var show = "Walkthrough"

    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        return true
    }
    
    
}
