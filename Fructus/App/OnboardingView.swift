//
//  OnboardingView.swift
//  Fructus
//
//  Created by Abiodun Osagie on 11/02/2025.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...7]) { item in
                FruitCardView(fruit: item)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea()
                
            }
            
            
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
        
    }
    
}

// MARK: - PREVIEW
#Preview {

    OnboardingView(fruits: fruitsData)
      
      
       
      
}
