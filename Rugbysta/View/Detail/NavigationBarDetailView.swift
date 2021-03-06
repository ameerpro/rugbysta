//
//  NavigationBarDetailView.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeOut){
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            CartButtonView(iconColor: Color.white)
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
