//
//  RegistrationView.swift
//  thread-clone
//
//  Created by Darkwa John on 02/10/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State var ViewModel = RegistrationViewModel()
   
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            
            Spacer()
            
            Image("thread_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack{
                TextField("Enter your email", text: $ViewModel.email)
                    .autocapitalization(.none)
                    .modifier(ThreadTextFieldModifier())
                SecureField("Enter your password", text: $ViewModel.password)
                    .modifier(ThreadTextFieldModifier())
                TextField("Enter your full name", text: $ViewModel.fullname)
                    .modifier(ThreadTextFieldModifier())
                TextField("Enter your username", text: $ViewModel.username)
                    .modifier(ThreadTextFieldModifier())
                Button{
                    Task{
                        try await ViewModel.createUser()
                    }
                } label: {
                    Text("Sign up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding(.vertical)
            }
                Spacer()
                Divider()
                Button{
                    dismiss()
                }label: {
                    HStack (spacing: 3){
                        Text("Already have an account? ")
                        Text("Sign in")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                }
                .padding(.vertical, 16)
            }
            
        }
    }


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
