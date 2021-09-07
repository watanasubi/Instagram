//
//  CommentData.swift
//  Instagram
//
//  Created by 加来　航 on 2021/09/07.
//

import UIKit
import Firebase

class CommentData: NSObject {

var id: String
    var name: String?
    var postid: String?
    var comment: String?
    var date: Date?

    init(document: QueryDocumentSnapshot) {

    self.id = document.documentID
    let commentDic = document.data()

    self.name = commentDic["name"] as? String
    self.postid = commentDic["postid"] as? String
    self.comment = commentDic["comment"] as? String

    let timestamp = commentDic["date"] as? Timestamp
    self.date = timestamp?.dateValue()
    }
}
