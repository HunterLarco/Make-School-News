//
//  UserModel.swift
//  makeschoolnews
//
//  Created by Hunter on 2/11/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import Foundation

class UserModel {

    private var email: String
    private var username: String
    private var created: NSDate
    private var karma: Int
    
    private let userid: String
    
    init(email: String, username: String, created: NSDate, karma: Int, userid: String){
        self.email = email
        self.username = username
        self.created = created
        self.karma = karma
        self.userid = userid
    }
    
}