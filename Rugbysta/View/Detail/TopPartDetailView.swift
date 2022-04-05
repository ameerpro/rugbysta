//
//  TopPartDetailView.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            
            // PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // PHOTO
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        }//: HSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: sampleProduct)
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
