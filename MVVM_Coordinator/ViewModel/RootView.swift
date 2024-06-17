//
//  RootView.swift
//  MVVM_Coordinator
//
//  Created by Jose Luis Sánchez-Porro on 17/6/24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var coordinator: AppCoordinator

    var body: some View {
        ZStack {
            if let rootView = coordinator.rootView {
                rootView
                    .id(coordinator.currentViewID)
                    .transition(coordinator.navigationDirection == .push ? .move(edge: .trailing) : .move(edge: .leading)) // Animar con transiciones específicas
            }
        }
        .animation(.default, value: coordinator.currentViewID) // Animar la transición
    }
}

#Preview {
    RootView()
}
