//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Roy Welborn on 12/16/22.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: PROPERTIES
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    
    // MARK: BODY
    var body: some View {
        ZStack
        {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 6, y: 0)
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

// MARK: VIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 400))
    }
}
