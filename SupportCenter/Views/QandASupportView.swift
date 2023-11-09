//
//  QandASupportView.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import SwiftUI
import Kingfisher
import UIKit
import SwiftUIBackports

struct QandASupportView: View {
    var listQandASupport: ListQandASupportModel
    @Backport.StateObject var vm: QAndASupportViewModel
    
  
    var body: some View {
        VStack(alignment: .leading){
            
            Text(listQandASupport.title)
                .font(Font.system(size: 18))
                .fontWeight(.medium)
        
            
            ForEach(listQandASupport.listQuestion) { question in
                
                QandASupportItem(title: question.question,attributedContent: vm.setUpAnswerTextView(question: question),selectedCharacterRangeCallBack:  {
                    range in
                    self.vm.handleTapKeys(range: range, attributedContent: vm.setUpAnswerTextView(question: question))
                    
                })
                    .listRowInsets(EdgeInsets())
                    
            }
            
            
        }
        
        
    }
}




