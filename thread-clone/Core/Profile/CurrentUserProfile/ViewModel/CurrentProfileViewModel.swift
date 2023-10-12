//
//  CurrentProfileViewModel.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import Foundation
import Combine

class CurrentUserProfileViewModel: ObservableObject{
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
}
