//
//  QAndASupportViewModel.swift
//  SupportCenter
//
//  Created by k2 tam on 09/11/2023.
//

import Foundation
import SwiftUI

class QAndASupportViewModel: ObservableObject {
    var ranges: [NSRange] = []

    
    func setUpAnswerTextView(question: QandASupportModel) -> NSMutableAttributedString{
        var str = question.content
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 7 // Set the desired line height here
        
        let attributeString = NSMutableAttributedString(string: str, attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .regular),
//            NSAttributedString.Key.foregroundColor: Color(hex: "#333333"),
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ])
        let substring = "{key}"
        
        var range = (attributeString.string as NSString).range(of: substring)
        var fullRange = NSRange(location: 0, length: attributeString.string.utf8.count)
        var index = 0
        
        while NSIntersectionRange(range, fullRange).length != 0{
            
            if index == question.keys.count {
                break
            }
            
            let keyData = question.keys[index]
            let insertText = keyData.text
            
            attributeString.replaceCharacters(in: range, with: insertText)
            var fontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .regular)]


            switch(keyData.fontWeight){
            case.regular:
                fontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .regular)]
            case.medium:
                fontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .medium)]
            }
            
            
//            let colorAttributes = [NSAttributedString.Key.foregroundColor: Color(hex: keyData.textColor)]
//            let colorAttributes = [NSAttributedString.Key.foregroundColor: UIColor(hex: "#2552E0")]
            let newRangeAfterInsert = NSRange(location: range.location ,length: insertText.count )
            
            if (keyData.textUnderline){
                let unitUnderline = [ NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue ]
                attributeString.addAttributes( unitUnderline, range: newRangeAfterInsert)
            }
            
            attributeString.addAttributes( fontAttributes, range: newRangeAfterInsert)
//            attributeString.addAttributes( colorAttributes, range: newRangeAfterInsert)

            
            ranges.append(newRangeAfterInsert)
            
            range = (attributeString.string as NSString).range(of: substring)
            fullRange = NSRange(location: 0, length: attributeString.string.count)
            index += 1
        }
        
        
       
        return attributeString
    }
    
    
    func handleTapKeys(range: NSRange, attributedContent: NSMutableAttributedString){
        // Check if the character index is within the bounds of the attributed string
        if characterIndex >= 0,
           characterIndex < attributedContent.string.utf8.count,
           let index = ranges.firstIndex(where: {
               (range.location >= $0.location ) &&  (range.location <= ($0.location + $0.length) )
           }){
            guard let vm = vm else {
                return
            }
            
            guard let key = vm.keys[safe: index] else{
                return
            }
            switch key.textAction{
            case .CALL:
                key.text.makeACall()
            case .NONE:
                self.callbackRedirect?(key.action)

            }
        }
    }
    
}
