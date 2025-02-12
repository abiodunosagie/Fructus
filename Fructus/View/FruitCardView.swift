//
//  FruitCardView.swift
//  Fructus
//
//  Created by Abiodun Osagie on 28/01/2025.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    

    var body: some View {
        ZStack {
            VStack( spacing: 20) {
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0 , green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                   
                
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON: START
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5), {
                isAnimating = true
            })
        }
        .frame(minWidth: 0, maxWidth : .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
       
       // .padding(.horizontal, 20)
    }
}


// MARK: - PREVIEW

#Preview {
    FruitCardView(fruit: fruitsData[1])
        .ignoresSafeArea()
        //.previewLayout(.fixed(width: 320, height: 640))
}
