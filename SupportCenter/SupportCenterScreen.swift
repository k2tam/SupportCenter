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
//            CategoryListView(categoryList: vm.listSupportCategory)
//                .background(Color.red)
//
            
            KFImage(URL(string: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?auto=format&fit=crop&q=80&w=3270&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))
                .placeholder({
                    Image(.yellowRightArrow)
                })
                .resizable()
                .loadImmediately()
                .frame(width: 100, height: 200)
            

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
