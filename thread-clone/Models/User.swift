//
//  User.swift
//  thread-clone
//
//  Created by Darkwa John on 10/10/2023.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname:String
    let email: String
    let username: String
    var ProfileImageUrl: String?
    var bio: String?
    
}
