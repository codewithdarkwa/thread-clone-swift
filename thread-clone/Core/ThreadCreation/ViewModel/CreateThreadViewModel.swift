//
//  CreateThreadViewModel.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import Foundation
import FirebaseAuth
import Firebase

class CreateThreadViewModel: ObservableObject{
    
    
    func uploadThread(caption: String) async throws{
        guard let uid =  Auth.auth().currentUser?.uid else {return}
        let thread = Thread(
            ownerUid: uid,
            caption: caption,
            timeStamp: Timestamp(),
            likes: 0
        )
               try await  ThreadService.uploadThread(thread)
    }
}
