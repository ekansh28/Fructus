//
//  StartButtonView.swift
//  Fructus
//
//  Created by Dr Deoshlok on 21/10/23.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        Button {
            isOnboarding = false
        }label: {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }

        }   .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(.white,lineWidth: 1.25))
        //: button
        .accentColor(.white)

    }
}

#Preview(traits: .sizeThatFitsLayout){
    StartButtonView()
}
