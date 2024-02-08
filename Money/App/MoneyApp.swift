//
//  MoneyApp.swift
//  Money
//
//  Created by Sumneet Brar on 1/23/24.
//

import SwiftUI
import Firebase

@main
struct MoneyApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
