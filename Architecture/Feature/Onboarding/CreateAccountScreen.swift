//
//  CreateAccountScreen.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI

struct CreateAccountScreen: View {
    
    let navigate: (NavigationAction) -> Void
    
    var body: some View {
		AppScreen {
			AppTopBar(title: "Create Account Screen")
		} content: {
            Button("Back") {
                navigate(.back)
            }
        }
    }
}

#Preview {
    CreateAccountScreen(navigate: { _ in })
}
