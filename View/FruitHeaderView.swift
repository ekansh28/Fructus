//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Dr Deoshlok on 21/10/23.
//

import SwiftUI

struct FruitHeaderView: View {
    @State private var isAnimatingImage: Bool = false
    var fruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red:0,green:0,blue:0 ,opacity: 0.15), radius: 8,x:6,y:8)
                .padding(.vertical,20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.3)
        }//zstack
        .frame(height:440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 440)) {
    FruitHeaderView(fruit: fruitsData[0])
}
