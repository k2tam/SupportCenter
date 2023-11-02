//
//  QandASupportModel.swift
//  Hi FPT
//
//  Created by Nghia Dao on 4/4/23.
//

import Foundation
import SwiftyJSON

struct ListQandASupportModel{
    var title: String
    var listQuestion: [QandASupportModel] = []
    
    init(json: JSON){
        self.title = json["Title"].stringValue
        self.listQuestion = json["ListQuestion"].arrayValue.map{
            return QandASupportModel(json: $0)
        }
    }
    
}

class QandASupportModel: Identifiable{
    let id = UUID()
    var question: String
    var content: String
    var keys: [KeyContentModel]
     var isExpanded: Bool = false
    var keyTracking: String
    
    init(json: JSON){
        keyTracking = json["keyTracking"].stringValue
        question = json["question"].stringValue
        content = json["content"].stringValue
        keys = json["keys"].arrayValue.map{
            contentJson in
            return KeyContentModel(json: contentJson)
        }
    }

}

struct KeyContentModel {
    let text: String
    let textColor: String
    let action: NavigationModel
    let fontWeight: FontWeight
    var textAction: QandATextAction
    var textUnderline: Bool
    
    init(json: JSON){
        text = json["text"].stringValue
        textColor = json["textColor"].stringValue
        action = NavigationModel(fromJSON: json["action"])
        fontWeight = FontWeight(rawValue: json["fontWeight"].stringValue) ?? .regular
        textAction = QandATextAction(rawValue: json["textAction"].stringValue) ?? .NONE
        textUnderline = json["textUnderline"].boolValue
    }
}


enum QandATextAction: String{
    case CALL
    case NONE
}
