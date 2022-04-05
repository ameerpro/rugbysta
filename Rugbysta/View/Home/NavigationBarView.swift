//
//  NavigationBarView.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 04/04/2022.
//

import SwiftUI

struct NavigationBarView: View {
    
    // MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            CartButtonView(iconColor: Color.black)
        }//: HSTACK
    }
}

// MARK: - PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
