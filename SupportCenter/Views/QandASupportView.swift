//
//  QandASupportView.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import SwiftUI
import Kingfisher

struct QandASupportView: View {
    var listQandASupport: ListQandASupportModel

    var body: some View {
        VStack(alignment: .leading){
            Text(listQandASupport.title)
                .font(Font.system(size: 18))
                .fontWeight(.medium)
            
            KFImage(URL(string: "https://app.gemoo.com/share/image-annotation/578251335483379712?codeId=DW2K2w3XQRYZL&origin=imageurlgenerator"))
            
            ScrollView {
                ForEach(listQandASupport.listQuestion) { question in
                    QandASupportItem(qAndASupportModel: question)
                        .listRowInsets(EdgeInsets())
                }
            }
        }
        .padding(.top, 32)
        
    }
}



struct QandASupportItem:  View {
    var qAndASupportModel: QandASupportModel
    
    @State var isExpanded = false
        
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
//                UITextViewWrapper(text: "fjdkjflakdjfkljda fadlkjfakldjfl akldjfladkjflk lakjflkdjasfk kdjfkadjfl lskdajfdkslajfkds dafjadksfjadksfj kadfkaj fkadjfad fakdjfkadjfkj fkadjkfj akfjak jfkajdf kaj kfjakdj fkadsjfk ajdsfkj adk fjadkfja kdjfadkj ka")
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
        print("hello")
    }
    
    func getKeyTextStyle(keyContent: KeyContentModel) -> Text{
        Text(keyContent.text)
            .foregroundColor(Color(hex: keyContent.textColor))
            .fontWeight(getFontWeight(keyContent.fontWeight))
            .underline(keyContent.textUnderline)
    }
    
    

}
