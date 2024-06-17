//
//  ContentView.swift
//  MVVM_Coordinator
//
//  Created by Jose Luis Sánchez-Porro on 13/6/24.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel: ListViewModel
    var didChooseItem: (Item) -> Void
    
    var body: some View {
        NavigationView {
            List(viewModel.items) { item in
                Text(item.title)
                    .onTapGesture {
                        self.didChooseItem(item)
                    }
            }
            .navigationTitle("Dev team")
          
        }
        
    }
}

#Preview {
    ListView(viewModel: ListViewModel()) { item in
        
    }
}
