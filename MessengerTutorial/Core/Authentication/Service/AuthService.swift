//
//  AuthService.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import Firebase

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
        print("User Session ID is \(userSession?.uid)")
    }
    
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("DEBUG: Fail to sign in user with error: \(error.localizedDescription)")
        }
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user

            print("DEBUG: Create User \(result.user.uid)")
        } catch {
            print("DEBUG: Fail to create user with error: \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut() //sign out on backend
            self.userSession = nil // update routing logic
        } catch {
            print("Debug: Fail to sign out with error\(error.localizedDescription)")
        }
    }
}
