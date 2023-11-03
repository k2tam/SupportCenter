//
//  UITextView.swift
//  SupportCenter
//
//  Created by k2 tam on 02/11/2023.
//

import SwiftUI
import UIKit

struct CustomUITextView: UIViewRepresentable {
    typealias UIViewType = UITextView
    
    @Binding var text: String
    @Binding var textStyle: UIFont.TextStyle
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.font = UIFont.preferredFont(forTextStyle: textStyle)
        textView.textColor = .red
        textView.autocapitalizationType = .sentences
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = "xin chao"
        uiView.font = UIFont.preferredFont(forTextStyle: textStyle)
    }
    
}

#Preview {
    UITextView()
}
