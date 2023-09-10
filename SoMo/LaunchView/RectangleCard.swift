//
//  RectangleCard.swift
//  SoMo
//
//  Created by George Hargreaves on 09/09/2023.
//

import SwiftUI

struct RectangleCard: View {
        
        var color = Color.white

    var body: some View {
    
        Rectangle()
            .foregroundColor(color)
            .cornerRadius(10)
            .shadow(radius: 5)
        
    }
}

struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard()
    }
}
