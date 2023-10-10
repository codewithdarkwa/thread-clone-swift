//
//  LoginViewModel.swift
//  thread-clone
//
//  Created by Darkwa John on 10/10/2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published  var email = ""
    @Published  var password = ""
 
    
    @MainActor
    func login() async throws{
        try await  AuthService.shared.login(
        withEmail: email,
        password: password
      )
    }
}

