//
//  LoginView.swift
//  thread-clone
//
//  Created by Darkwa John on 02/10/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var ViewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
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
                }
                NavigationLink{
                    Text("Forgot password")
                } label: {
                    Text("Forgot password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing,28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Button{
                    Task{ try await ViewModel.login()}
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                Spacer()
                Divider()
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack (spacing: 3){
                        Text("Don't have an account? ")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .padding(.vertical, 16)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
