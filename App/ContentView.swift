//
//  ContentView.swift
//  Fructus
//
//  Created by Dr Deoshlok on 21/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit:item)){
                        FruitRowView(fruit:item)
                            .padding(.vertical,4)
                    }

                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings.toggle()
                }){
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                }
            )
        }//:NAVIGATIon
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
