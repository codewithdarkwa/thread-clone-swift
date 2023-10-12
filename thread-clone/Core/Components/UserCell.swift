//
//  UserCell.swift
//  thread-clone
//
//  Created by Darkwa John on 09/10/2023.
//

import SwiftUI

struct UserCell: View {
    let user:User
    var body: some View {
        HStack{
            CircularProfileImageView(user: user)
            VStack(alignment: .leading, spacing: 2){
                Text(user.username)
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text(user.fullname)
                    .font(.footnote)
            }
            Spacer()
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray), lineWidth:1)
                }
            
        }
        .padding(.horizontal)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(user:dev.user)
    }
}
