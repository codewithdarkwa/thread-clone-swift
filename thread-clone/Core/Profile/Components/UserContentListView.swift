//
//  UserContentListView.swift
//  thread-clone
//
//  Created by Darkwa John on 12/10/2023.
//

import SwiftUI

struct UserContentListView: View {
    
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    
    var body: some View {
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

struct UserContentListView_Previews: PreviewProvider {
    static var previews: some View {
        UserContentListView()
    }
}
