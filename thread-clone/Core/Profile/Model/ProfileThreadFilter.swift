//
//  ProfileThreadFilter.swift
//  thread-clone
//
//  Created by Darkwa John on 09/10/2023.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable{
    case threads
    case replies
    
    var title: String {
        switch self{
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    var id: Int {return self.rawValue}
}
