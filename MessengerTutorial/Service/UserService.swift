//
//  UserService.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/30.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift
 
class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await  Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
        print("DEBUG: Current user in service is \(currentUser)")
    }
}
