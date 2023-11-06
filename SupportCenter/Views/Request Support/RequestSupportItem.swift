//
//  RequestSupportItem.swift
//  SupportCenter
//
//  Created by k2 tam on 06/11/2023.
//

import SwiftUI

struct RequestSupportItem: View {
    let text: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Image(.icTechnicalRequest)
                .frame(width: 44, height: 45)
            
            Text(text)
                .font(Font.system(size: 14))
        }
        .frame(maxWidth: .infinity, minHeight: 65, maxHeight: 65)
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(Color(hex: "#D4DAE4"))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(color: Color(hex: "#333333", alpha: 0.25), radius: 2, x: 1, y: 2)
        
        
        
    }
}

#Preview {
    RequestSupportItem(text: "Thủ tục, cước phí")
}
