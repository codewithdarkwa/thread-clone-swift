//
//  UserContentListViewModel.swift
//  thread-clone
//
//  Created by Darkwa John on 13/10/2023.
//

import Foundation

class UserContentListViewModel: ObservableObject{
    @Published var threads = [Thread]()
    
    let user:User
    
    init(user: User) {
        self.user = user
        Task{
            try await fetchUserThreads()
        }
    }
    
    func fetchUserThreads() async throws{
        self.threads = try await ThreadService.fetchUserThreads(uid: user.id)
    }
}
