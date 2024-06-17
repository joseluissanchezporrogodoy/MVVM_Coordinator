//
//  SwiftUIView.swift
//  MVVM_Coordinator
//
//  Created by Jose Luis Sánchez-Porro on 13/6/24.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailViewModel
    var goBack: () -> Void
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text(viewModel.item.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(viewModel.item.description)
                    .font(.body)
            }
            .padding()
            .navigationTitle("Detail View")
            .navigationBarItems(leading: Button(action: {
                goBack()
            }) {
                HStack {
                    Image(systemName: "chevron.left") // Icono de flecha hacia la izquierda
                    Text("Atrás")
                }
            })
        }
    }
}


#Preview {
    DetailView(viewModel: DetailViewModel(item: Item(id: 0, title: "jose", description: "crack"))){
        
    }
}
