//
//  ExploreView.swift
//  thread-clone
//
//  Created by Darkwa John on 02/10/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchTerm = ""
    @StateObject var viewModel = ExploreViewModel()
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.users){
                        user in
                        NavigationLink(value: user) {
                            VStack {
                              UserCell(user: user)
                                Divider()
                            }
                            .padding(.vertical, 4)
                        }
                        }
                }
            }
        }
        .navigationDestination(for: User.self, destination: { user in
            ProfileView(user: user)
        })
        .navigationTitle("Search")
        .searchable(text: $searchTerm, prompt: "Search")
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
