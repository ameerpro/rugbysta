//
//  TopCornersRoundedShape.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 05/04/2022.
//

import SwiftUI

struct TopCornersRoundedShape: Shape {

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
    
}

struct TopCornersRoundedShape_Previews: PreviewProvider {
    static var previews: some View {
        TopCornersRoundedShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
