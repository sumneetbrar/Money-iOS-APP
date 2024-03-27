//
//  BusgetPage.swift
//  Money
//
//  Created by Tyler on 2/29/24.
//

import SwiftUI

struct BudgetPage: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        // Title
        Text("")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
        
        ScrollView(showsIndicators: false){ // Enables scrolling
            VStack( spacing: 30) {
                
                // Budget Rectangles - refactor later like transactions
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Budget Goal 1")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$200")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Budget Goal 2")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$100")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Budget Goal 3")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$700")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    )
                
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 350, height: 100)
                    .cornerRadius(50)
                    .shadow(color: Color.black, radius: 5, x: 2, y: 2)
                    .overlay(
                        HStack (spacing: 130) {
                            Text("Budget Goal 4")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                            Text("$900")
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
    BudgetPage()
}
