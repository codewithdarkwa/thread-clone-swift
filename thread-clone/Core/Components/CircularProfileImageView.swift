//
//  CircularProfileImageView.swift
//  thread-clone
//
//  Created by Darkwa John on 09/10/2023.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("profile")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
