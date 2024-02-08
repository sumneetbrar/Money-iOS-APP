//
//  RegistrationPage.swift
//  Money
//
//  Created by Sumneet Brar on 2/1/24.
//

import SwiftUI

struct RegistrationPage: View {
    @State private var fullname = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Image("money")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
        }
        
        VStack (spacing: 20) {
            InputView(text: $fullname,
                      title: "Full Name",
                      placeholder: "John Doe")
            
            InputView(text: $email,
                      title: "Email Address",
                      placeholder: "johndoe@example.com")
            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
            
            InputView(text: $password,
                      title: "Password",
                      placeholder: "Enter your password",
                      isSecureField: true)
            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
            
            ZStack (alignment: .trailing) {
                InputView(text: $confirmPassword,
                          title: "Confirm password",
                          placeholder: "Confirm your password",
                          isSecureField: true)
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                if !password.isEmpty && !confirmPassword.isEmpty {
                    if password == confirmPassword {
                        Image(systemName: "checkmark.circle.fill")
                            .imageScale(.large)
                            .fontWeight(.bold)
                            .foregroundColor(Color(.systemGreen))
                    } else {
                        Image(systemName: "xmark.circle.fill")
                            .imageScale(.large)
                            .fontWeight(.bold)
                            .foregroundColor(Color(.systemRed))
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(.top, 12)
        
        Button {
            Task {
                try await viewModel.createUser(withEmail:email,
                                               password: password,
                                               fullname: fullname)
            }
        } label: {
            HStack {
                Text("SIGN UP")
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
        
        Button {
            dismiss()
        } label: {
            HStack (spacing: 5) {
                Text("Already have an account?")
                Text("Sign in")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .font(.system(size: 20))
        }
    }
}

extension RegistrationPage: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 7
        && confirmPassword == password
        && !fullname.isEmpty
    }
}

#Preview {
    RegistrationPage()
}
