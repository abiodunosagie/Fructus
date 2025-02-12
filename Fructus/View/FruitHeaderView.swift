//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Abiodun Osagie on 12/02/2025.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    // MARK: - BODY
    var body: some View {
        ZStack {
            //: Background gradient
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            //: Fruit image
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
        
    }
}


// MARK: PREVIEW
#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
}
