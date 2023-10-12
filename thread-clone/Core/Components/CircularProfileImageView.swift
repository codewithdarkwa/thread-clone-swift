//
//  CircularProfileImageView.swift
//  thread-clone
//
//  Created by Darkwa John on 09/10/2023.
//

import SwiftUI
import Kingfisher


enum ProfileImageSize{
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xlarge
    
    var dimension:CGFloat{
        switch self{
        case .xxSmall: return 20
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 48
        case .large: return 64
        case .xlarge: return 80
        }
    }
}


struct CircularProfileImageView: View {
    var user: User?
    
    let size: ProfileImageSize
  
    var body: some View {
        if let imageUrl = user?.ProfileImageUrl{
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        }else{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .foregroundColor(Color(.systemGray4))
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: dev.user, size: .medium)
    }
}
