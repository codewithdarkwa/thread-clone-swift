//
//  CircularProfileImageView.swift
//  thread-clone
//
//  Created by Darkwa John on 09/10/2023.
//

import SwiftUI
import Kingfisher

struct CircularProfileImageView: View {
    var user: User?
    
    init(user: User?) {
        self.user = user
    }
    var body: some View {
        if let imageUrl = user?.ProfileImageUrl{
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
        }else{
            Image("person.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(Color(.systemGray4))
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: dev.user)
    }
}
