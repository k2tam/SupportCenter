//
//  QandASupportView.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import SwiftUI
import Kingfisher
import UIKit


struct QandASupportView: View {
    var listQandASupport: ListQandASupportModel
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text(listQandASupport.title)
                .font(Font.system(size: 18))
                .fontWeight(.medium)
        
            
            ScrollView {
                ForEach(listQandASupport.listQuestion) { question in
                    QandASupportItem(qAndASupportModel: question)
                        .listRowInsets(EdgeInsets())
                }
            }
        }
        .padding(.top, 32)
        
    }
}




