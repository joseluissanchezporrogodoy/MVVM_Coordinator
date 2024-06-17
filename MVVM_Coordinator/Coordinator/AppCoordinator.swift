//
//  AppCoordinator.swift
//  MVVM_Coordinator
//
//  Created by Jose Luis Sánchez-Porro on 13/6/24.
//

import Foundation
import SwiftUI

enum NavigationDirection {
    case push
    case pop
}

class AppCoordinator: ObservableObject {
    @Published var rootView: AnyView?
    @Published var currentViewID: String = UUID().uuidString
    @Published var navigationDirection: NavigationDirection = .push
    private var stack: [(id: String, view: AnyView)] = []

    init() {
        showListView()
    }

    private func showListView() {
        let listViewModel = ListViewModel()
        let listView = ListView(viewModel: listViewModel) { item in
            self.showDetailView(for: item)
        }
        
        let newView = AnyView(listView)
        rootView = newView
        stack = [(UUID().uuidString, newView)]
        currentViewID = stack.last!.id
    }

    func showDetailView(for item: Item) {
        let detailViewModel = DetailViewModel(item: item)
        let detailView = DetailView(viewModel: detailViewModel) { [weak self] in
            self?.goBack()
        }
        
        let newView = AnyView(detailView)
        stack.append((UUID().uuidString, newView))
        navigationDirection = .push
        withAnimation {
            rootView = newView
            currentViewID = stack.last!.id
        }
    }

    func goBack() {
        guard stack.count > 1 else { return }
        stack.removeLast()
        navigationDirection = .pop
        withAnimation {
            rootView = stack.last!.view
            currentViewID = stack.last!.id
        }
    }
}
