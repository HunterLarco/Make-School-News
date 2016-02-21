//
//  LinkModel.swift
//  makeschoolnews
//
//  Created by Hunter on 2/11/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import Foundation

class LinkModel {
    
    private var url: String
    private var text: String?
    private var title: String?
    private var created: NSDate
    
    private var author: UserModel
    
    private var votes: Int
    private var voteStatus: Int
    
    private let linkid: String
    private let commentrootid: String
    
    private var commentsCount: Int
    
    init(url: String, text: String?, title: String?, created: NSDate, author: UserModel, votes: Int, voteStatus: Int, linkid: String, commentrootid: String, commentsCount: Int){
        self.url = url
        self.text = text
        self.title = title
        self.created = created
        self.author = author
        self.votes = votes
        self.voteStatus = voteStatus
        self.linkid = linkid
        self.commentrootid = commentrootid
        self.commentsCount = commentsCount
    }
    
}