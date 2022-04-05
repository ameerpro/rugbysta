//
//  AddToCartDetailView.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//: BUTTON
        .padding(15)
        .background(
            Color(red: product.red, green: product.green, blue: product.blue)
                .clipShape(
                    Capsule()
                          )
        )
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(product: sampleProduct)
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
