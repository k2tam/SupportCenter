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
    
    static func requestListSupportCategory(completion: @escaping(_ result: [SupportCategory]?) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25){
            
            guard let data = ListCategorySampleData.sampleData.data(using: .utf8) else {
                completion(nil)
                return
            }
            
            var temp = [SupportCategory]()
            
            if let json = try? JSON(data: data){
                temp =  json["data"].arrayValue.map {
                    return SupportCategory(json: $0)
                }
                
                completion(temp)
                return
            }
            
            
            
            completion(nil)
        }
    }
    
    static func requestSupportRequestsData(completion: @escaping(_ result: RequestSupportModel?) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25){
            guard let data = RequestSupportSampleData.sampleData.data(using: .utf8) else {
                completion(nil)
                return
            }
            
            if let json = try? JSON(data: data){
                completion(RequestSupportModel(json: json["data"]))
                return
            }
            
            completion(nil)
        }
    }
    
    
    static func requestListQandASupport(completion: @escaping(_ result: ListQandASupportModel?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25){
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
