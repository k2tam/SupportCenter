//
//  ContentView.swift
//  SupportCenter
//
//  Created by k2 tam on 02/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Hello, SwiftUI"
    @State private var textStyle = UIFont.TextStyle.body
    
    var body: some View {
        UITextViewWrapper(text: $message)
    }
}

#Preview {
    ContentView()
}
