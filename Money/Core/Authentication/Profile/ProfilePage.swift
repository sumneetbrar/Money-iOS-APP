//
//  SwiftUIView.swift
//  Money
//
//  Created by Sumneet Brar on 2/4/24.
//

import SwiftUI

struct ProfilePage: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var isSignOutPresented = false
    @State private var isDeletePopupPresented = false
    
    var body: some View {
        if let user = viewModel.currentUser {
            List {
                Section {
                    HStack {
                        Text(user.initials)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        VStack (alignment: .leading, spacing: 4) {
                            Text(user.fullname)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 4)

                            Text(user.email)
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                
                Section("General") {
                    HStack {
                        SettingsRowView(imageName: "gear",
                                        title: "Version",
                                        tintColor: Color(.systemGray))
                        Spacer()
                        
                        Text("1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                Section("Account") {
                    Button {
                        withAnimation{
                            viewModel.present()
                        }
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                    }
                    .overlay(alignment: .bottom){
                        if viewModel.action.isPresented{
                            SignOutPopupView{
                                withAnimation{
                                    viewModel.dismiss()
                            }
                        }
                    }
                }
                    // I want to put the popup in here
                    Button {
                        print("Delete Account...")
                    } label: {
                        SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                    }
                }
            }
        }
    }
}


#Preview {
    ProfilePage().environmentObject(AuthViewModel())
}
