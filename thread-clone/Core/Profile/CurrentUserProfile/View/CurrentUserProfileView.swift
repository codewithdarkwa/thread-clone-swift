//
//  CurrentUserProfileView.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @StateObject var viewModel = CurrentUserProfileViewModel()
    @State private var showEditProfile = false
    
    private var currentUser: User?{
        return viewModel.currentUser
    }
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false) {
                //Bio and stats
                VStack(spacing: 20) {
                   ProfileHeaderView(user: currentUser)
                    Button{
                        showEditProfile.toggle()
                    }label: {
                        Text("Edit Profile")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: 352, height: 32)
                            .background(.white)
                            .cornerRadius(8)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(.systemGray), lineWidth:1)
                            }
                    }
                    // user content list view
                    UserContentListView()
                }
//
            }
            .sheet(isPresented: $showEditProfile, content: {
                if let user = currentUser {
                    EditProfileView(user: user)
                }
                
            })
//            .toolbar(){
//                ToolbarItem(placement: .navigationBarTrailing){
//                    Button{
//                        AuthService.shared.signOut()
//                    } label: {
//                        Image(systemName: "line.3.horizontal")
//                            .foregroundColor(.black)
//                    }
//                }
//            }
            .padding(.horizontal)
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
