//
//  MVVM_CoordinatorApp.swift
//  MVVM_Coordinator
//
//  Created by Jose Luis Sánchez-Porro on 13/6/24.
//

import SwiftUI

@main
struct MVVM_CoordinatorApp: App {
    @StateObject var coordinator = AppCoordinator()

        var body: some Scene {
            WindowGroup {
                RootView()
                    .environmentObject(coordinator)
            }
        }
}
