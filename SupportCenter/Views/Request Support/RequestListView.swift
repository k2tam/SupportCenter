//
//  RequestListView.swift
//  SupportCenter
//
//  Created by k2 tam on 06/11/2023.
//

import SwiftUI

struct RequestListView: View {
    private var samples = ["Không sử dụng được Wifi", "Thông tin cước"]
    var body: some View {
        VStack{
            ForEach(samples, id: \.self){sample in
                RequestItemView()
            }
        }
    }
}

#Preview {
    RequestListView()
}
