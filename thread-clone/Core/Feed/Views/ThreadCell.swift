//
//  ThreadCell.swift
//  thread-clone
//
//  Created by Darkwa John on 09/10/2023.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView()
                VStack (alignment: .leading, spacing:4){
                    HStack {
                        Text("Codewithdarkwa")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        Spacer()
                        Text("10min")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        Button{
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    Text("Starting something new")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    HStack (spacing: 16){
                        Button{
                            
                        }label: {
                            Image(systemName: "heart")
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "bubble.right")
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "paperplane")
                        }
                        
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                }
                
            }
            Divider()
        }
        .padding()
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell()
    }
}
