//
//  UserCell.swift
//  thread-clone
//
//  Created by Darkwa John on 09/10/2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            CircularProfileImageView()
            VStack(alignment: .leading){
                Text("Codewithdarkwa")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("@codewithdarwa")
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
        UserCell()
    }
}
