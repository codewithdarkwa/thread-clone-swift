//
//  ExploreView.swift
//  thread-clone
//
//  Created by Darkwa John on 02/10/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchTerm = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0...10, id: \.self){
                        user in
                        VStack {
                          UserCell()
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
        }
        .searchable(text: $searchTerm, prompt: "Search")
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
