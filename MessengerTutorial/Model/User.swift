//
//  User.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let fullname: String
    let email: String
    var profileImageURL: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString 
    }
}

extension User {
    static let MOCK_USER = User(fullname: "JinheeLee", email: "8888wlsgml@gmail.com", profileImageURL: "Facebook")
}
