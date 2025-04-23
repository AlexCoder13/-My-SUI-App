//
//  My_SUI_AppApp.swift
//  My SUI App
//
//  Created by Александр Семёнов on 08.04.2025.
//
import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct MyApp: App {
    
    // MARK: - Properties
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var vm = ViewModel()
    
    // MARK: - Body
    var body: some Scene {
        WindowGroup {
            
            MainView()
                .environmentObject(vm)
        }
    }
}
