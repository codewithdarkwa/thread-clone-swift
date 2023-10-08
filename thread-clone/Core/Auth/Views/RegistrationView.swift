//
//  RegistrationView.swift
//  thread-clone
//
//  Created by Darkwa John on 02/10/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
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
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadTextFieldModifier())
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadTextFieldModifier())
                TextField("Enter your full name", text: $fullname)
                    .modifier(ThreadTextFieldModifier())
                TextField("Enter your username", text: $username)
                    .modifier(ThreadTextFieldModifier())
                Button{
                    
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
