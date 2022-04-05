//
//  HeaderDetailView.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - PROPERTIES
    let productName: String
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(productName)
                .font(.largeTitle)
                .fontWeight(.black)
        }//: VSTACK
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(productName: sampleProduct.name)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
