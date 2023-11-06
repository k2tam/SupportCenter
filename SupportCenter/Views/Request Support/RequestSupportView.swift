//
//  RequestSupportView.swift
//  SupportCenter
//
//  Created by k2 tam on 06/11/2023.
//

import SwiftUI

struct RequestSupportView: View {
//    var requestSupport: RequestSupportModel
    let samples = ["Kỹ thuật", "Thủ tục, cước phí", "..."]

    
    private var TitleView: some View {
        Text("Tạo yêu cầu hỗ trợ")
            .font(Font.system(size: 16))
            .fontWeight(.medium)
            .padding(.bottom, 16)
    }
    
    private var RequestBtnGridView: some View {
        CustomGrid(columns: 2, list: samples,itemSpacing: 16,horizontalPaddingToScreen: 32, heightItem: 85) { sample in
            Button(action: {
                
            }, label: {
                RequestSupportItem(text: sample)
                    .foregroundColor(.black)
                

            })
        }
        .padding(.bottom, 24)
    }
    
    private var RequestList: some View {
        
        VStack(spacing: 16){
            
        }
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
            RequestBtnGridView
            
            DividerView()
            RequestListTitle
            RequestList
            
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
