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
        ScrollView{
            VStack {
                
                if let safeListSupportCategory = vm.listSupportCategory {
                    CategoryListView(categoryList: safeListSupportCategory)
                        .padding(.bottom, 32)
                }
                
                RequestSupportView()
                    .padding(.bottom, 32)

                if let safeListQandASupporQuestion = vm.listQandASupporQuestion {
                    QandASupportView(listQandASupport: safeListQandASupporQuestion)
                }

            }
            .padding(.all, 16)
            .onAppear(perform: {
                vm.fetchListSupportCategory()
                vm.fetchSupportRequestsData()
                vm.fetchQandASupporQuestionData()
            })
        }
        .preferredColorScheme(.light)
        
    }
    
}

#Preview {
    SupportCenterScreen()
}
