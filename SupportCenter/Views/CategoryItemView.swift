//
//  CategoryItemView.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import SwiftUI
import SwiftyJSON
import Kingfisher

struct CategoryItemView: View {
    let category: SupportCategory
    
    var body: some View {
        HStack() {
            Text(category.name)
                .font(.system(size: 14))
                .foregroundColor(Color(hex: category.nameColor))
                .lineLimit(2)
            
        }
        .padding(.top, 12.61)
        .padding(.bottom, 14)
        .padding(.horizontal, 16)
        
        .background(
            RoundedRectangle(cornerRadius: CGFloat(category.roundCorner))
                .stroke(Color(hex: category.borderColor), lineWidth: CGFloat(category.borderWidth))
                .background(
                    RoundedRectangle(cornerRadius: CGFloat(category.roundCorner))
                        .fill(Color(hex: category.backgroundColor, alpha: 0.08))
                )
        )
    }
}

//#Preview {
//
//    CategoryItemView(category: )
//}
