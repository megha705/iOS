//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Roy Welborn on 7/19/23.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                
            })//: End Button
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration:  0.5)) {
                        isAnimated.toggle()
                    }
                })
            Spacer()
                Button(action: {}, label: {
                    ZStack {
                        Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                        Circle()
                            .fill(Color.red)
                            .frame(width: 14, height: 14, alignment: .center)
                            .offset(x:13, y: -10)
                        
                    }//: End ZStatck
                })//: End Button
                
            
        }//: End HStack
    }
}

// MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
