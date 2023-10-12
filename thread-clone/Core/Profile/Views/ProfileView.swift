//
//  ProfileView.swift
//  thread-clone
//
//  Created by Darkwa John on 02/10/2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    
    let user:User
    var body: some View {
        ScrollView(showsIndicators: false) {
            //Bio and stats
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        //full name and username
                        VStack(alignment: .leading, spacing: 4){
                            
                            Text(user.fullname)
                                .font(.title)
                                .fontWeight(.semibold)
                            Text(user.username)
                                .font(.subheadline)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        Text("100 followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    CircularProfileImageView()
                }
                
                Button{
                    
                }label: {
                    Text("Follow")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                // user content list view
                VStack{
                    HStack{
                        ForEach(ProfileThreadFilter.allCases){
                            filter in
                            VStack{
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 180, height: 1)
                                }else{
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .frame(width: 180, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()){
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    LazyVStack{
                        ForEach(0...10, id: \.self){
                            thread in
                            ThreadCell()
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            
        }
        .toolbar(){
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    AuthService.shared.signOut()
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.black)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: dev.user)
    }
}
