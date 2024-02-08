//
//  ContentView.swift
//  Money
//
//  Created by Sumneet Brar on 1/23/24.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                
                // Logo and Heading
                HStack {
                    Image(systemName: "flame.fill")
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .imageScale(.large)
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                        //.foregroundStyle(.tint)
                    Text("Money")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    Image(systemName: "flame.fill")
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .imageScale(.large)
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                    
                }
                Spacer()
                
                // Cash flow rectangle
                Rectangle()
                    .fill(Color.init(red: 12, green: 129, blue: 123))
                    .frame(width: 350, height: 150)
                    .cornerRadius(10)
                    .shadow(color: Color.black, radius: 3, x: 1, y: 1)
                    .offset(y: -70)
                    .overlay(
                        HStack {
                            Text("Cash Flow")
                                .font(.system(size: 30))
                                .offset(x: -40, y: -90)
                            
                            Text("14,376")
                                .font(.system(size: 30))
                                .offset(x: 40, y: -90)
                        }
                    )
                
                
                // TRANSACTIONS RECTANGLE
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 350, height: 250)
                    .cornerRadius(10)
                    .shadow(color: Color.black, radius: 3, x: 1, y: 1)
                    .offset(y: -30)
                    .overlay(
                        VStack {
                            HStack {
                                    Text("Transactions")
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                        .offset(x: -30, y: -90)
                                
                                Text("14,376")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .offset(x: 30, y: -90)
                            }
                            HStack {
                                Text("Recent Transaction 1")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .offset(x: -30, y: -60)
                            }
                            HStack {
                                Text("Recent Transaction 2")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .offset(x: -30, y: -30)
                            }
                            
                        }
                    )
                
                
                // Navigation Bar
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 10, x: 0, y: 2)
                    .offset(y: 70)
                
                
                // Profile Button
                
                NavigationLink {
                    ProfilePage()
                } label: {
                    VStack (spacing: 5) {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("Profile")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.black)
                    .offset(x: 90, y: -35)
                }
                
            }
        }
    }
}

#Preview {
    HomePage()
}
