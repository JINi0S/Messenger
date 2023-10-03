//
//  InboxViewModel.swift
//  MessengerTutorial
//
//  Created by Lee Jinhee on 2023/10/02.
//

import Foundation
import Combine
import Firebase

class InboxViewModel: ObservableObject {
    @Published var currentUser: User?
    
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
     
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellable )
    }
}
