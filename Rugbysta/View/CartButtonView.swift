//
//  CartButtonView.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import SwiftUI

struct CartButtonView: View {
    
    let iconColor: Color
    
    var body: some View {
        
        Button(action: {}, label: {
            ZStack {
                Image(systemName: "cart")
                    .font(.title)
                .foregroundColor(iconColor)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: 13, y: -10)
                
            }
        })
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(iconColor: .black)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
