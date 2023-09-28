//
//  User.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    var profileImageURL: String?
}

extension User {
    static let MOCK_USER = User(fullname: "JinheeLee", email: "8888wlsgml@gmail.com", profileImageURL: "Facebook")
}
