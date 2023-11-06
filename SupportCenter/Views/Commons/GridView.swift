//
//  GridView.swift
//  SupportCenter
//
//  Created by k2 tam on 04/11/2023.
//

import SwiftUI

struct CustomGrid<Content: View, T: Hashable>: View {
    private let columns: Int
    
    // Multi-dimensional array of your list. Modified as per rendering needs.
    private var list: [[T]] = []
    
    private var itemCount: Int
    
    private var itemSpacing: CGFloat
    
    private var horizontalPaddingToScreen: CGFloat

    private var heightItem: CGFloat
    
    
    // This block you specify in 'UIGrid' is stored here
    private let content: (T) -> Content
    
    
    
    init(columns: Int, list: [T], itemSpacing: CGFloat, horizontalPaddingToScreen: CGFloat ,heightItem : CGFloat , @ViewBuilder content:@escaping (T) -> Content) {
        self.columns = columns
        self.content = content
        self.itemSpacing = itemSpacing
        self.horizontalPaddingToScreen = horizontalPaddingToScreen
        self.heightItem = heightItem
        self.itemCount = list.count
        self.setupList(list)
    }
    
    var body: some View {
        VStack( alignment: .leading, spacing: 10) {
            ForEach(0 ..< self.list.count, id: \.self) { i  in
                HStack(spacing: itemSpacing) {
                    ForEach(self.list[i], id: \.self) { object in
                        // Your UI defined in the block is called from here.
                        self.content(object)
                            .frame(minHeight: heightItem)
                            .frame(width: (UIScreen.main.bounds.size.width - horizontalPaddingToScreen * 2) / CGFloat(columns) - (itemSpacing / 2))


                    }

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

