//
//  QandASupportItem.swift
//  SupportCenter
//
//  Created by k2 tam on 02/11/2023.
//

import SwiftUI

struct QandASupportItem:  View {
    var qAndASupportModel: QandASupportModel

    @State var isExpanded = false
    
    @State private var message = "hello there there there /r jfkdjfkdjfkd fjdkfjdk jfdajflkd dajfkdj dfdkjfd fdjf df fdjf ddfjfd dfj dfjnjfkdj fdkfk dkfldf kfdlfk dfkd dfd dfj fff djkfjd fjkdfj "
    @State private var textStyle = UIFont.TextStyle.body
        
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(qAndASupportModel.question)
                    .font(Font.system(size: 16))
                    
                Spacer()
                
                Image(.arrowDown)
                    .alignmentGuide(VerticalAlignment.center, computeValue: { dimension in
                        dimension[.top]
                    })
                    .rotationEffect(isExpanded ? .degrees(-180) : .degrees(0))
                    .padding(.top, 4)
                    
            }
            .padding(EdgeInsets(top: 13, leading: 0, bottom: 16, trailing: 0))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.3)) {
                    isExpanded.toggle()
                }
            }
            if isExpanded {
                UITextViewWrapper(text: $message)
            }
           
   
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
        .onAppear(perform: {
            replaceKeyContent(content: qAndASupportModel.content)
        })
      
    }
    
    
    
    func getFontWeight(_ fontWeight: FontWeight) -> Font.Weight{
        switch fontWeight {
        case .medium:
            return Font.Weight.medium
        case .regular:
            return Font.Weight.regular
        }
    }
    
    func replaceKeyContent(content: String){
        let components = content.components(separatedBy: "{key}")
    }
    
    func getKeyTextStyle(keyContent: KeyContentModel) -> Text{
        Text(keyContent.text)
            .foregroundColor(Color(hex: keyContent.textColor))
            .fontWeight(getFontWeight(keyContent.fontWeight))
            .underline(keyContent.textUnderline)
    }
    
    

}
