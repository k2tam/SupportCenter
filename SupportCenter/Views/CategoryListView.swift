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
            UIGrid(columns: self.columnsCount, list: categoryList, heightItem: 64) { category in
                CategoryItemView(category: category)

            }
            
            
        }
        
    }
}


struct UIGrid<Content: View, T: Hashable>: View {
    private let columns: Int
    
    // Multi-dimensional array of your list. Modified as per rendering needs.
    private var list: [[T]] = []
    
    private var itemCount: Int
    
    private var heightItem: CGFloat
    
    
    
    // This block you specify in 'UIGrid' is stored here
    private let content: (T) -> Content
    
    
    
    init(columns: Int, list: [T], heightItem : CGFloat , @ViewBuilder content:@escaping (T) -> Content) {
        self.columns = columns
        self.content = content
        self.heightItem = heightItem
        self.itemCount = list.count
        self.setupList(list)
    }
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(0 ..< self.list.count, id: \.self) { i  in
                HStack {
                    ForEach(self.list[i], id: \.self) { object in
                        // Your UI defined in the block is called from here.
                        self.content(object)
                            .frame(minHeight: heightItem)
                            .frame(width: (UIScreen.main.bounds.size.width - 32) / CGFloat(columns))


                    }
                    
                    
                    
                    if( (self.itemCount % self.columns) != 0 && i == self.list.count - 1){
                        let emptyViewToAdd = (self.list.count * self.columns) - itemCount
                        ForEach(0..<emptyViewToAdd, id: \.self){_ in
                            Color(.clear)
                                .frame(height: heightItem)
                                .frame(minWidth: (UIScreen.main.bounds.size.width - 32) / CGFloat(columns))

                        }
                       
                        
                       
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



//[
//    [SupportCenter.SupportCategory(id: 0A814B32-1D5E-415C-BF5A-A16CBADFBC85, name: "Item 1", nameColor: "#333333", backgroundColor: "#144A6187", borderWidth: 0.0, borderColor: "", roundCorner: 8.0, fontWeight: SupportCenter.FontWeight.regular, iconUrl: "https://app.gemoo.com/share/image-annotation/578251335483379712?codeId=DW2K2w3XQRYZL&origin=imageurlgenerator", action: SupportCenter.NavigationModel(dataAction: "CHAT", data: SupportCenter.NavigationModelData(channel: "ftel"), actionType: "go_to_screen"), opacity: 0.08, keyTracking: "Home/Support/Chat", type: "CHAT"),
//     
//        SupportCenter.SupportCategory(id: 867D9B23-D81F-4DA3-ACBF-49E63B8D3EE3, name: "Item 2", nameColor: "#333333", backgroundColor: "#144A6187", borderWidth: 0.0, borderColor: "", roundCorner: 8.0, fontWeight: SupportCenter.FontWeight.regular, iconUrl: "", action: SupportCenter.NavigationModel(dataAction: "CHAT", data: SupportCenter.NavigationModelData(channel: "ftel"), actionType: "go_to_screen"), opacity: 0.08, keyTracking: "Home/Support/Chat", type: "CHAT")
//    
//        ],
//    
//        [SupportCenter.SupportCategory(id: 3CBD7D80-00C6-4443-8592-9A272309C26D, name: "Item 3", nameColor: "#333333", backgroundColor: "#144A6187", borderWidth: 0.0, borderColor: "", roundCorner: 8.0, fontWeight: SupportCenter.FontWeight.regular, iconUrl: "", action: SupportCenter.NavigationModel(dataAction: "CHAT", data: SupportCenter.NavigationModelData(channel: "ftel"), actionType: "go_to_screen"), opacity: 0.08, keyTracking: "Home/Support/Chat", type: "CHAT")
//        ]
//        
//
//]
