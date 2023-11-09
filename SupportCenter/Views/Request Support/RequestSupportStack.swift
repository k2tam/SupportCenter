//
//  RequestSupportStack.swift
//  SupportCenter
//
//  Created by k2 tam on 08/11/2023.
//

import SwiftUI


struct RequestSupportStack: View {
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
    
    let supportRequestTypes: [eSupportType] = [.technical,.payment,.customerCare]
    
    
    var body: some View {
        GeometryReader {geo in
            HStack{
                ForEach(Array(supportRequestTypes.enumerated()), id: \.element.self){index , supportRequestType in
                    Button(action: {
                        
                    }, label: {
                        RequestSupportItem()
                            .frame(width: geo.size.width * 0.2)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color(hex: "#D4DAE4"))
                            .foregroundColor(.black)
                            .cornerRadius(8)
                        .shadow(color: Color(hex: "#333333", alpha: 0.25), radius: 2, x: 1, y: 2)                    })

                    
                    if index != supportRequestTypes.count - 1 {
                        Spacer()
                    }
                }
                
            }
        }
        .frame(height:  105)
        .padding(.bottom, 32)
    }
}


#Preview {
    RequestSupportStack()
}

struct RequestSupportItem: View {
    var body: some View {
        VStack(alignment: .center){
            Image(.icTechnicalRequest)
                .frame(height: 42)
                .padding(.top, 11)
                .padding(.bottom, 8)
            
            
            Text("Thủ tục")
                .font(Font.system(size: 12))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(height: 30)
            
            Spacer()
        }
        
    }
}
