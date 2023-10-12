//
//  UserService.swift
//  thread-clone
//
//  Created by Darkwa John on 10/10/2023.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class UserService{
    
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init(){
        Task{ try await fetchCurrentUser()}
    }
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
                
    }
    
    static func fetchUsers() async throws -> [User]{
        guard let CurrentUid = Auth.auth().currentUser?.uid else {return [] }
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let users = snapshot.documents.compactMap({try? $0.data(as: User.self)})
        return users.filter({$0.id != CurrentUid})
    }
    
    func reset(){
        self.currentUser = nil
    }
}