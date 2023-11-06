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
  
    
    var body: some View {
        VStack {
            
            // Custom Grid View
            UIGrid(columns: self.columnsCount, list: categoryList, horizontalPadding: 16, itemSpace: 16 ,heightItem: 64) { category in
                Button(action: {
                    
                }, label: {
                    CategoryItemView(category: category)

                })

            }
            
            
        }
        
        
    }
}


struct UIGrid<Content: View, T: Hashable>: View {
    private let columns: Int
    
    // Multi-dimensional array of your list. Modified as per rendering needs.
    private var list: [[T]] = []
    
    private var itemCount: Int
    
    private var horizontalPadding: CGFloat
    
    private var itemSpace: CGFloat

    private var heightItem: CGFloat
    
    
    // This block you specify in 'UIGrid' is stored here
    private let content: (T) -> Content
    
    
    
    init(columns: Int, list: [T], horizontalPadding: CGFloat, itemSpace: CGFloat ,heightItem : CGFloat , @ViewBuilder content:@escaping (T) -> Content) {
        self.columns = columns
        self.content = content
        self.horizontalPadding = horizontalPadding
        self.itemSpace = itemSpace
        self.heightItem = heightItem
        self.itemCount = list.count
        self.setupList(list)
    }
    
    var body: some View {
        VStack(alignment: .leading,spacing: itemSpace) {
            ForEach(0 ..< self.list.count, id: \.self) { i  in
                HStack(spacing: 16) {
                    ForEach(self.list[i], id: \.self) { object in
                        // Your UI defined in the block is called from here.
                        self.content(object)
                            .frame(minHeight: heightItem)
                            .frame(maxWidth: (UIScreen.main.bounds.size.width - horizontalPadding * 2) / CGFloat(columns) - (itemSpace / 2) )


                    }
                    
//                    
//                    if( (self.itemCount % self.columns) != 0 && i == self.list.count - 1){
//                        let emptyViewToAdd = (self.list.count * self.columns) - itemCount
//                        ForEach(0..<emptyViewToAdd, id: \.self){_ in
//                            Color(.clear)
//                                .frame(height: heightItem)
//                                .frame(minWidth: (UIScreen.main.bounds.size.width - horizontalPadding * 2) / CGFloat(columns))
//
//                        }
//                       
//                        
//                       
//                    }
                    
                }
            }
            
        }
    }
    
    private mutating func setupList(_ list: [T]) {
        var row = 0
        var columnIndex = 0
        
        for object in list {
            if columnIndex < self.columns {
                if columnIndex == 0 {
                    self.list.insert([object], at: row)
                    columnIndex += 1
                }else {
                    self.list[row].append(object)
                    columnIndex += 1
                }
            }else {
                row += 1
                self.list.insert([object], at: row)
                columnIndex = 1
            }
        }
        
    }
}




