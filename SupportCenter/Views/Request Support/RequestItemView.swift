//
//  RequestItemView.swift
//  SupportCenter
//
//  Created by k2 tam on 06/11/2023.
//

import SwiftUI


struct RequestItemView: View {
    
    private var TextContractNo: some View {
        Text("SGJ040120")
            .foregroundColor(.white)
            .font(Font.system(size: 10))
            .fontWeight(.medium)
            .padding(.horizontal, 8)
            .padding(.vertical, 2)
            .background(Color(hex: "#8CA0C0"))
            .clipShape(.capsule(style: .circular))
    }
    
    private var TextRequestStatus: some View {
        Text("Đang cử nhân viên")
            .font(Font.system(size: 14))
            .foregroundColor(Color(hex: "#728AB1"))
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8){
            HStack{
                TextContractNo
                Spacer()
                TextRequestStatus
            }
            
            Text("Không sử dụng được Wifi kfjgklfjfdlkfv lfkd fdlfk fdjfk fdkj fdfdkjf dfdfd d")
                .font(Font.system(size: 14))
            
        }
        .padding(.all, 16)
        .background(Color(hex: "#4A6187", alpha: 0.08))
        .cornerRadius(8)
    }
}

#Preview {
    RequestItemView()
}
