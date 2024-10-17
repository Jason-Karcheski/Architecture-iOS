//
//  SignInScreen.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI

struct SignInScreen: View {
    
    let onNavigate: (NavigationAction) -> Void
    
    var body: some View {
        AppScreen {
            Text("Sign In Screen")
            
            Button("Go To Create Account") {
                onNavigate(.toRoute(route: .createAccount))
            }
        }
    }
}

#Preview {
    SignInScreen(onNavigate: { _ in })
}
