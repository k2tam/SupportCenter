//
//  CategoryListView.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import SwiftUI
import SwiftyJSON



struct CategoryListView: View {
    let categoryList: [SupportCategory]
    
    let columnsCount = 2
    var rowsCount: Int {
        let temp =  Double(categoryList.count) / Double(columnsCount)
        return  Int(ceil(temp))
    }
    
    var body: some View {
        QGrid(categoryList,
              columns: 2,
              vSpacing: 10,
              hSpacing: 15,
              vPadding: 1) { category in
            // Your Grid cell
            Button(action: {
                
            }, label: {
                CategoryItemView(category: category)

            })
        }
    }
}


