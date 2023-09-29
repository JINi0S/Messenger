//
//  ContentViewModel.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/09/29.
//

import Firebase
import Combine
 
class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellable = Set<AnyCancellable>()
    
    init() {
         setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        }.store(in: &cancellable )
    }
}
