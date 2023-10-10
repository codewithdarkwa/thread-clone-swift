//
//  ProfileViewModel.swift
//  thread-clone
//
//  Created by Darkwa John on 10/10/2023.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject{
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("User in view model from combine\(String(describing: user))")
        }.store(in: &cancellables)
    }
}
