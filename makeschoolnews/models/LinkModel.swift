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
    
}