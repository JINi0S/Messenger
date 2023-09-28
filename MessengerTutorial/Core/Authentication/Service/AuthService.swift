//
//  AuthService.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import Firebase

class AuthService {
    func login(withEmail email: String, password: String) async throws {
        print("DEBUG: Email is \(email), password is \(password )")
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password )
            print("DEBUG: Create User \(result.user.uid)")
        } catch {
            print("DEBUG: Fail to create user with error: \(error.localizedDescription)")
        }
    }
}
