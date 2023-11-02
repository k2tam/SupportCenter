//
//  SampleData.swift
//  SupportCenter
//
//  Created by k2 tam on 01/11/2023.
//

import Foundation


struct ListCategorySampleData {
    static let sampleData = """
       {
         "message" : "Thành công",
         "statusCode" : 0,
         "data" : [
           {
             "borderColor" : "",
             "iconUrl" : "https://app.gemoo.com/share/image-annotation/578251335483379712?codeId=DW2K2w3XQRYZL&origin=imageurlgenerator",
             "action" : {
               "dataAction" : "CHAT",
               "data" : {
                 "channel" : "ftel"
               },
               "actionType" : "go_to_screen"
             },
             "nameColor" : "#333333",
             "backgroundColor" : "#144A6187",
             "name" : "Chat với nhân viên CSKH fdkjfladjlfjadskljfakl dfjkladjf",
             "borderWidth" : null,
             "opacity" : 0.080000000000000002,
             "keyTracking" : "Home/Support/Chat",
             "type" : "CHAT",
             "roundCorner" : 8,
             "fontWeight" : "regular"
           },
    

           {
             "borderColor" : "",
             "iconUrl" : "",
             "action" : {
               "dataAction" : "CHAT",
               "data" : {
                 "channel" : "ftel"
               },
               "actionType" : "go_to_screen"
             },
             "nameColor" : "#333333",
             "backgroundColor" : "#144A6187",
             "name" : "Điểm giao dịch gần nhà",
             "borderWidth" : null,
             "opacity" : 0.080000000000000002,
             "keyTracking" : "Home/Support/Chat",
             "type" : "CHAT",
             "roundCorner" : 8,
             "fontWeight" : "regular"
           },
            
               {
                 "borderColor" : "",
                 "iconUrl" : "",
                 "action" : {
                   "dataAction" : "CHAT",
                   "data" : {
                     "channel" : "ftel"
                   },
                   "actionType" : "go_to_screen"
                 },
                 "nameColor" : "#333333",
                 "backgroundColor" : "#144A6187",
                 "name" : "Chat với nhân viên CSKH fdkjfladjlfjadskljfakl dfjkladjf",
                 "borderWidth" : null,
                 "opacity" : 0.080000000000000002,
                 "keyTracking" : "Home/Support/Chat",
                 "type" : "CHAT",
                 "roundCorner" : 8,
                 "fontWeight" : "regular"
               },
        

               {
                 "borderColor" : "",
                 "iconUrl" : "",
                 "action" : {
                   "dataAction" : "CHAT",
                   "data" : {
                     "channel" : "ftel"
                   },
                   "actionType" : "go_to_screen"
                 },
                 "nameColor" : "#333333",
                 "backgroundColor" : "#144A6187",
                 "name" : "Điểm giao dịch gần nhà",
                 "borderWidth" : null,
                 "opacity" : 0.080000000000000002,
                 "keyTracking" : "Home/Support/Chat",
                 "type" : "CHAT",
                 "roundCorner" : 8,
                 "fontWeight" : "regular"
               },
    
               {
                 "borderColor" : "",
                 "iconUrl" : "",
                 "action" : {
                   "dataAction" : "CHAT",
                   "data" : {
                     "channel" : "ftel"
                   },
                   "actionType" : "go_to_screen"
                 },
                 "nameColor" : "#333333",
                 "backgroundColor" : "#144A6187",
                 "name" : "Điểm giao dịch gần nhà",
                 "borderWidth" : null,
                 "opacity" : 0.080000000000000002,
                 "keyTracking" : "Home/Support/Chat",
                 "type" : "CHAT",
                 "roundCorner" : 8,
                 "fontWeight" : "regular"
               },

          
         ]
       }

    """
    
}
    

struct RequestSupportSampleData {
    let sampleData = """
     {
      "statusCode" : 0,
      "message" : "Thành công",
      "data" : {
        "report" : [
          {
            "reportId" : 17699018,
            "contractNo" : "SGAAS3387",
            "reportTypeId" : "1",
            "stepColor" : "#728AB1",
            "stepStatus" : [
              {
                "icon" : "https://www.google.com/search?q=icon&sca_esv=578407962&tbm=isch&sxsrf=AM9HkKlfFa83MhaDtVfskqNQTNEoTBUQAw:1698824911143&source=lnms&sa=X&ved=2ahUKEwjoyfT6p6KCAxXvklYBHUJDA7gQ_AUoAXoECAEQAw&biw=1680&bih=947&dpr=2#imgrc=pdB6fkDtOiqkaM",
                "textColor" : "#333333",
                "time" : "20/03/2023\n13:51",
                "feedback" : "",
                "status" : "complete",
                "id" : "9",
                "name" : "Đã hủy",
                "detail" : ""
              },
              {
                "icon" : "",
                "textColor" : "#969696",
                "time" : "06/02/2023\n17:42",
                "feedback" : "",
                "status" : "complete",
                "id" : "3",
                "name" : "Đã tiếp nhận yêu cầu ",
                "detail" : ""
              },
              {
                "icon" : "",
                "textColor" : "#969696",
                "time" : "06/02/2023\n17:42",
                "feedback" : "",
                "status" : "complete",
                "id" : "1",
                "name" : "Đã gửi yêu cầu",
                "detail" : ""
              }
            ],
            "iconReportType" : "",
            "infoEmployee" : null,
            "contractId" : 1090055503,
            "checklistType" : "",
            "reportType" : "HT-KYTHUAT",
            "lastStepName" : "Đã hủy",
            "isShowBtnCancel" : false,
            "subTypeName" : "Không truy cập được internet",
            "reportDate" : "2023-02-06",
            "reportTimeStr" : "06/02/2023, 18:00-19:00",
            "note" : "",
            "dateCreated" : "06/02/2023",
            "reportTime" : {
              "begin" : "18:00",
              "end" : "19:00"
            }
          }
        ]
      }
    }
    
    """
}


struct QAndASupQuestionSampleData {
    static let sampleData = """
        {
          "statusCode" : 0,
          "data" : {
            "totalPage" : 8,
            "perPage" : 3,
            "ListQuestion" : [
              {
                "content" : "Để được thông tin về chính sách, ưu đãi hoặc hỗ trợ thủ tục, cước phí và đăng ký dịch vụ bạn có thể gọi điện thoại đến số {key} hello",
                "id" : 1,
                "question" : "Tôi có thể gọi đến tổng đài Chăm sóc khách hàng (CSKH) qua số điện thoại nào?",
                "keyTracking" : "QA1",
                "keys" : [
                  {
                    "text" : "19006600",
                    "fontWeight" : "medium",
                    "action" : null,
                    "textAction" : "CALL",
                    "textColor" : "#2552E0",
                    "textUnderline" : true
                  }
                ]
              },
              {
                "content" : "",
                "id" : 2,
                "question" : "Làm sao biết ai đang dùng trộm WiFi nhà tôi?",
                "keyTracking" : "QA2",
                "keys" : [
                  {
                    "text" : "Truy cập chức năng Quản lý truy cập tại màn hình trang chủ",
                    "textColor" : "#333333",
                    "action" : null,
                    "fontWeight" : "medium"
                  },
                  {
                    "text" : "Kiểm tra và xem thông tin các thiết bị đang truy cập",
                    "textColor" : "#333333",
                    "action" : null,
                    "fontWeight" : "medium"
                  }
                ]
              },
              {
                "content" : "",
                "id" : 3,
                "question" : "Cải thiện WiFi chậm hoặc hay rớt mạng, xử lý thế nào?",
                "keyTracking" : "QA3",
                "keys" : null
              }
            ],
            "Title" : "Câu hỏi thường gặp",
            "currentPage" : 1
          },
          "message" : "Thành công"
        }
    """
}

