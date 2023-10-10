//
//  ContentViewModel.swift
//  thread-clone
//
//  Created by Darkwa John on 10/10/2023.
//

import Foundation
import Combine
import Firebase

class ContentViewModel: ObservableObject{
    @Published var userSession : FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    init(){
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        AuthService.shared.$userSession.sink { [weak self]  userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}
