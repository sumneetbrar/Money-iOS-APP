//
//  SignOutPopup.swift
//  Money
//
//  Created by Tyler Higashihara on 2/29/24.
//

import SwiftUI

struct SignOutPopupView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    let isClosed: () -> Void
        
    var body: some View {
        VStack(spacing: .zero){
            title
            
            HStack(){
                yesButton
                noButton
            }
        }
        .padding()
        .multilineTextAlignment(.center)
        .background(.white)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 10)
        .transition(.move(edge: .bottom))
        
    }
}

struct SignOutPopupView_Preview: PreviewProvider {
    static var previews: some View {
        SignOutPopupView{}
            .padding()
            .previewLayout(.sizeThatFits)
    }
}

private extension SignOutPopupView {
    
    var title: some View {
        Text("Are you sure you want to log out?")
            .font(.system(size: 30,
                          weight: .bold,
                          design: .rounded)
            )
            .padding()
    }
    
    var yesButton: some View {
        Button(){
            viewModel.signOut()
            isClosed()
        } label: {
            Text("Yes")
                .font(.system(size: 25))
                .frame(maxWidth: .infinity)
                .frame(height: 25)
        }
        .buttonStyle(.bordered)
        .controlSize(.large)
        .accentColor(.red)
        
    }
    var noButton: some View {
        Button(){
            isClosed()
            
        } label: {
            Text("No")
                .font(.system(size: 25))
                .frame(maxWidth: .infinity)
                .frame(height: 25)
        }
        .buttonStyle(.bordered)
        .controlSize(.large)
    }
}
