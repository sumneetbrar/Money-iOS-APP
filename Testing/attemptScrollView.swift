//
//  ScrollView.swift
//  Money
//
//  Created by csstudent on 2/15/24.
//

import SwiftUI

struct attemptScrollView: View {
    let description = "Lorem ipsum ..."

    
    var body: some View {
            ScrollView {
                VStack(spacing: 20) {
                        ForEach(0..<10) {
                            Text("Item \($0)")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.red)
                        }
                    }
                }
                .frame(height: 350)
        
        // Home Button
        Button {
        } label: {
            VStack (spacing: 10) {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 60, height: 50)
                Text("Home")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))
            }
            .foregroundColor(.black)
        }
            }
        }


#Preview {
    attemptScrollView()
}
