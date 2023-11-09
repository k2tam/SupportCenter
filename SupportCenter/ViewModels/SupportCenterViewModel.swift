//
//  SupportCenterViewModel.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import Foundation
import SwiftUI


class SupportCenterViewModel: ObservableObject {
    @Published var listSupportCategory: [SupportCategory]?
    @Published var requestSupportModel: RequestSupportModel?
    @Published var listQandASupporQuestion: ListQandASupportModel?

    
    func fetchListSupportCategory() {
        SupportCenterManager.requestListSupportCategory(completion: { result in
            self.listSupportCategory = result
        })
    }
    
    func fetchSupportRequestsData(){
        SupportCenterManager.requestSupportRequestsData { result in
            self.requestSupportModel = result
        }
    }
    
    func fetchQandASupporQuestionData(){
         SupportCenterManager.requestListQandASupport(completion: { result in
            self.listQandASupporQuestion = result
        })
    }
    

    
   
    
    
}
