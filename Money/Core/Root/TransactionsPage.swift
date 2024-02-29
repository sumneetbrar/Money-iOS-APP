//
//  TransactionsPage.swift
//  Money
//
//  Created by Sumneet Brar on 2/9/24.
//

import SwiftUI

struct TransactionsPage: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        // Title
        Text("")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
        
        ScrollView(showsIndicators: false){ // Enables scrolling
            VStack( spacing: 30) {
                
                // Transaction Rectangles - probably should refactor this
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Transaction 1")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$376")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Transaction 1")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$376")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Transaction 1")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$376")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Transaction 1")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$376")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Transaction 2")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$76")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Transaction 3")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$6.45")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Transaction 4")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$17")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Spacer()
            } // end of VStack
            .padding(10)
            
        } // End of scrollView
        
        
        // Home Button
        // Title
            
            Button {
                dismiss()
            } label: {
                VStack (spacing: 10) {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 40, height: 30)
                }
                .foregroundColor(.black)
            }

    }
}

#Preview {
    TransactionsPage()
}
