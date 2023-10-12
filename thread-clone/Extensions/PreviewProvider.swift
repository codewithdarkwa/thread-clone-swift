//
//  PreviewProvider.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import SwiftUI

extension PreviewProvider{
    static var dev: DeveloperPreview{
        return DeveloperPreview.shared
    }
    
}

class DeveloperPreview{
    static let shared = DeveloperPreview()
    
    let user = User(
        id: NSUUID().uuidString,
        fullname: "Darkwa John",
        email: "junior@gmail.com",
        username: "junior"
    )
}
