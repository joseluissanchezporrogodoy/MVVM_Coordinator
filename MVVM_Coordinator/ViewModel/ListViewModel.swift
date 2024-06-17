//
//  ListViewModel.swift
//  MVVM_Coordinator
//
//  Created by Jose Luis Sánchez-Porro on 13/6/24.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [Item] = [
    Item(id: 0, title: "juan", description: "dev"),
    Item(id: 1, title: "jose", description: "dev"),
    Item(id: 2, title: "Enrique", description: "dev"),
    Item(id: 3, title: "Carlos", description: "dev"),
    ] // Simplified for this example
}
