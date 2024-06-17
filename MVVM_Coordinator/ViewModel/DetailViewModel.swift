//
//  DetailViewModel.swift
//  MVVM_Coordinator
//
//  Created by Jose Luis Sánchez-Porro on 13/6/24.
//

import Foundation
class DetailViewModel: ObservableObject {
    let item: Item
  
    init(item: Item) {
        self.item = item
    }
}
