//
//  SupportCenterViewModel.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import Foundation


class SupportCenterViewModel: ObservableObject {
    @Published  var listSupportCategory: [SupportCategory] = []
    @Published var listQandASupporQuestion: ListQandASupportModel?
    
    func fetchListSupportCategory() {
        if let safeListSupportCategory = SupportCenterManager.requestListSupportCategory() {
            self.listSupportCategory = safeListSupportCategory            
        }
    }
    
    func fetchQandASupporQuestionData(){
         SupportCenterManager.requestListQandASupport(completion: { result in
            self.listQandASupporQuestion = result
        })
    }
    
}
