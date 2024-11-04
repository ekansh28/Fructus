//
//  OnboardingView.swift
//  Fructus
//
//  Created by Dr Deoshlok on 21/10/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){item in
                FruitCardView(fruit: item)
            }

        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

#Preview {
    OnboardingView(fruits: fruitsData)
}
