//
//  ContentView.swift
//  thread-clone
//
//  Created by Darkwa John on 02/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var ViewModel = ContentViewModel()
    var body: some View {
        if ViewModel.userSession != nil {
            ThreadTabView()
        }else{
            LoginView()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
