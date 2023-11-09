//
//  QandASupportItem.swift
//  SupportCenter
//
//  Created by k2 tam on 02/11/2023.
//

import SwiftUI

struct QandASupportItem:  View {
    var title: String
    var attributedContent: NSMutableAttributedString
    var selectedCharacterRangeCallBack: ((_ range: NSRange) -> Void)?

    @State var isExpanded = false
    
    
    @State private var textStyle = UIFont.TextStyle.body
    @State  var tappedCharacter: String?

    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(title)
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
                withAnimation(.linear(duration: 0.25)) {
                    isExpanded.toggle()
                }
            }
            if isExpanded {
                AttributedText(
                    attributedContent,
                    selectedRangeCallBack: self.selectedCharacterRangeCallBack
            
                )
            }
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
       
        
    }
    
    
    
    func getFontWeight(_ fontWeight: FontWeight) -> Font.Weight{
        switch fontWeight {
        case .medium:
            return Font.Weight.medium
        case .regular:
            return Font.Weight.regular
        }
    }

    
    func getKeyTextStyle(keyContent: KeyContentModel) -> Text{
        Text(keyContent.text)
            .foregroundColor(Color(hex: keyContent.textColor))
            .fontWeight(getFontWeight(keyContent.fontWeight))
            .underline(keyContent.textUnderline)
    }
    
    
    
}
