//
//  LoginPage.swift
//  Money
//
//  Created by Sumneet Brar on 1/31/24.
//

import SwiftUI

struct LoginPage: View {
    @State private var email = ""
    @State private var passsword = ""
    @EnvironmentObject var `viewModel`: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                // image
                Image("money")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 20)
                
                
                // form fields
                VStack (spacing: 20) {
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    InputView(text: $passsword,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                    .autocapitalization(.none)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // sign in button
                
                Button {
                    Task {
                        try await viewModel.signIn(withEmail: email,
                                                   password: passsword)
                    }
                } label: {
                    HStack {
                        Text("Sign in")
                            .fontWeight(.bold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0: 0.5)
                .cornerRadius(10)
                .padding(.top, 25)
                
                
                Spacer()
                
                // sign up button
                
                NavigationLink {
                    RegistrationPage()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack (spacing: 5) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 20))
                }
            }
        }
    }
}


extension LoginPage: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && passsword.count > 7
        && !passsword.isEmpty
    }
}

#Preview {
    LoginPage()
}
