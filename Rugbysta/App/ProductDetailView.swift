//
//  ProductDetailView.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView(productName: shop.selectedProduct?.name ?? sampleProduct.name)
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView(product: shop.selectedProduct ?? sampleProduct)
                .padding(.horizontal)
                .zIndex(1)
            
            // DEATIL BOTTOM PART
            
            VStack(alignment: .center, spacing: 0) {
                // RATINGS + SIZES
                
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//: SCROLL
                
                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // ADD TO CART
                AddToCartDetailView(product: shop.selectedProduct ?? sampleProduct)
                    .padding(.bottom, 20)
                
            }//: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(TopCornersRoundedShape())
                    .padding(.top, -105)
            )
            .zIndex(0)
            
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .ignoresSafeArea(.all, edges: .all)
    }
}

// MARK: - PREVIEWS
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
