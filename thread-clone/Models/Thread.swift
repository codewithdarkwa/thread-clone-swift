//
//  Thread.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String?
    
    let ownerUid: String
    let caption: String
    let timeStamp: Timestamp
    var likes: Int
    
    var id:String {
        return threadId ?? NSUUID().uuidString
    }
    var user: User?
}
