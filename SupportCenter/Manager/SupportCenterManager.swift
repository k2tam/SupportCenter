//
//  SupportCenterManager.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import Foundation
import SwiftyJSON

struct SupportCenterManager {
    public static var shared = SupportCenterManager()
    
    static func requestListSupportCategory() -> [SupportCategory]?{
        guard let data = ListCategorySampleData.sampleData.data(using: .utf8) else { return nil }
        
        if let json = try? JSON(data: data){
            return json["data"].arrayValue.map {
                return SupportCategory(json: $0)
            }
        }
        
        return nil
    }
    
    
    static func requestListQandASupport(completion: @escaping(_ result: ListQandASupportModel?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.25){
            guard let data = QAndASupQuestionSampleData.sampleData.data(using: .utf8) else {
                completion(nil)
                return
            }
            
            if let json =  try? JSON(data: data){
                completion(ListQandASupportModel(json: json["data"]))
                return
            }
            
            completion(nil)
        }
        
       
        
      
        
    }
    
    
    
    
}
