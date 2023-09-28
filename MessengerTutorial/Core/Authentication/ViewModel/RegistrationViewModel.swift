//
//  RegistrationViewModel.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/28.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname  = ""

    func createUser() async throws {
        try await AuthService().createUser(withEmail: email, password: password, fullname: fullname)
    }
}
