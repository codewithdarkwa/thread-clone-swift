//
//  ThreadTextFieldModifier.swift
//  thread-clone
//
//  Created by Darkwa John on 02/10/2023.
//

import SwiftUI

struct ThreadTextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
