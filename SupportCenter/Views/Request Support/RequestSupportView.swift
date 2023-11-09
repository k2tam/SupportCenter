//
//  RequestSupportView.swift
//  SupportCenter
//
//  Created by k2 tam on 06/11/2023.
//

import SwiftUI

enum eSupportType{
    case technical
    case payment
    case customerCare
    
    func title() -> String {
        switch self {
        case .technical:
            return "Kỹ thuật"
        case .payment:
            return "Thủ tục Cước phí"
        case .customerCare:
            return "CSKH"
        }
    }
}

struct RequestSupportView: View {
    //    var requestSupport: RequestSupportModel
    let supportRequestTypes: [eSupportType] = [.technical,.payment,.customerCare]
    
    
    private var TitleView: some View {
        Text("Tạo yêu cầu hỗ trợ")
            .font(Font.system(size: 16))
            .fontWeight(.medium)
            .padding(.bottom, 16)
    }
 
    
    private var RequestListTitle: some View {
        HStack{
            Text("Danh sách yêu cầu")
                .font(Font.system(size: 14))
            Spacer()
            Button {
                
            } label: {
                Text("Tất cả")
                    .font(Font.system(size: 14))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hex: "#3C4E6D"))
                
            }
            
            
        }
        .frame(height: 36)
    }
    
    var body: some View {
        
        
        VStack(alignment: .leading){
            TitleView
//            RequestBtnGridView
            
            RequestSupportStack()
            
            DividerView()
            RequestListTitle
            
            RequestListView()
            
            
        }
        .padding(.all, 16)
        .background(Color(hex: "#4A6187", alpha: 0.08))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

#Preview {
    RequestSupportView()
}
