//
//  FeedViewModel.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import Foundation


class FeedViewModel : ObservableObject{
    
    @Published var threads = [Thread]()
    
    init() {
        Task { try await  fetchThreads()}
    }
    
    @MainActor
    func fetchThreads() async throws {
        self.threads = try await ThreadService.fetchThreads()
        try await fetchUserDataForThreads()
        print("threads: \(self.threads)")
    }
    
    private func fetchUserDataForThreads() async throws{
        for i in 0..<threads.count {
            let thread = threads[i]
            let ownerUid = thread.ownerUid
            let threadUser = try await UserService.fetchUser(withUid: ownerUid)
            
            threads[i].user = threadUser
        }
    }
}
