//
//  ContentView.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import SwiftUI
import SwiftUIBackports
import Kingfisher

struct SupportCenterScreen: View {
    @Backport.StateObject private var vm = SupportCenterViewModel()
   
    var body: some View {
        VStack {
            
            if let safeListSupportCategory = vm.listSupportCategory {
                CategoryListView(categoryList: safeListSupportCategory)

            }

            if let safeListQandASupporQuestion = vm.listQandASupporQuestion {
                QandASupportView(listQandASupport: safeListQandASupporQuestion)
                    
            }

        }
        .padding(.all, 16)
        .onAppear(perform: {
            vm.fetchListSupportCategory()
            vm.fetchQandASupporQuestionData()
        })
        
        
        
    }
    
}

#Preview {
    SupportCenterScreen()
}
