//
//  ContentView.swift
//  Fructus
//
//  Created by Abiodun Osagie on 28/01/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination:FruitDetailView(fruit: item) ) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                   
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
        
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
