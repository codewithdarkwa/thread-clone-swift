//
//  ViewModel.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import Foundation

class ExploreViewModel: ObservableObject{
    
    @Published var users = [User]()
    
    init(){
        Task{ try await fetchUsers()}
    }
    
    @MainActor
    private func fetchUsers() async throws{
        self.users = try await UserService.fetchUsers()
    }
}
