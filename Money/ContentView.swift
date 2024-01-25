//
//  ContentView.swift
//  Money
//
//  Created by Sumneet Brar on 1/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .font(.system(size: 35))
                    .foregroundStyle(.tint)
                    .offset(y: -70)
                Text("Money")
                    .font(.system(size: 50))
                    .offset(y: -70)
                
            }
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 350, height: 150)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 10, x: 0, y: 2)
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
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 350, height: 250)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 10, x: 0, y: 2)
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
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 350, height: 100)
                .cornerRadius(50)
                .shadow(color: Color.black, radius: 10, x: 0, y: 2)
                .offset(y: 80)
                .overlay(
                    Image(systemName: "heart.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding(10)
                )
        }
    }
}

#Preview {
    ContentView()
}
