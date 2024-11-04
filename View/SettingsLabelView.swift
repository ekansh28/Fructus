//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Dr Deoshlok on 21/10/23.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructuse", labelImage: "info.circle")
        
}
