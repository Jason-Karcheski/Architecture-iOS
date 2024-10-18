//
//  SignInScreen.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI

struct SignInScreen: View {
    
    let navigate: (NavigationAction) -> Void
    
    var body: some View {
		AppScreen {
			AppTopBar(title: "Sign In")
		} content: {
            Button("Go To Create Account") {
                navigate(.toRoute(.createAccount))
            }
        }
    }
}

#Preview {
    SignInScreen(navigate: { _ in })
}
