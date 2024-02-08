//
//  ContentView.swift
//  Money
//
//  Created by Sumneet Brar on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                HomePage()
            } else {
                LoginPage()
            }
        }
    }
}

#Preview {
    ContentView()
}
