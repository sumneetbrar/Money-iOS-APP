//
//  ContentView.swift
//  Money
//
//  Created by Sumneet Brar on 1/23/24.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        
        // maybe this page should be split into sections
        
        NavigationStack {
            
            //Color(.white)
                //.ignoresSafeArea()
                VStack(spacing: 20) {
                    
                    // Logo and Heading
                    HStack {
                        Image(systemName: "flame.fill")
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .imageScale(.large)
                            .font(.system(size: 30))
                            .foregroundColor(.green)
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
                            .foregroundColor(.green)
                        
                    }
                    Spacer()
                    
                    
                    ScrollView(showsIndicators: false){
                        
                        
                    // Cash flow rectangle
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 350, height: 150)
                        .cornerRadius(10)
                        .shadow(color: Color.black, radius: 3, x: 1, y: 1)
                        .offset(y: -70)
                        .overlay(
                            HStack {
                                Text("Cash Flow")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .offset(x: -40, y: -90)
                                
                                Text("14,376")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .offset(x: 40, y: -90)
                            }
                        )
                    
                    
                    // TRANSACTIONS RECTANGLE
                    NavigationLink {
                        TransactionsPage()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Rectangle()
                            .fill(Color.green)
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
                    }
                    
                     // Budget Rectangle
                    NavigationLink {
                        BudgetPage()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 350, height: 250)
                            .cornerRadius(10)
                            .shadow(color: Color.black, radius: 3, x: 1, y: 1)
                            .offset(y: -30)
                            .overlay(
                                VStack {
                                    HStack {
                                        Text("Budget Goals")
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                            .offset(x: -30, y: -90)
                                        
                                        Text("4")
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                            .offset(x: 30, y: -90)
                                    }
                                    HStack {
                                        Text("Recent Budget Goal 1")
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                            .offset(x: -30, y: -60)
                                    }
                                    HStack {
                                        Text("Recent Budget Goal 2")
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                            .offset(x: -30, y: -30)
                                    }
                                    
                                }
                            )
                    }
                } // ScrollView end
                    
                
                
                //Navigation Bar
                VStack {
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 350, height: 100)
                        .cornerRadius(50)
                        .shadow(color: Color.black, radius: 5, x: 0, y: 2)
                        .offset(y: 70)
                    
                    // Profile Button
                    NavigationLink {
                        ProfilePage()
                    } label: {
                        VStack (spacing: 10) {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Profile")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.black)
                    }
                    .offset(y: -25)
                }
            }
        }
    }
}

#Preview {
    HomePage()
}
