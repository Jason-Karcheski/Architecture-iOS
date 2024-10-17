//
//  CreateAccountScreen.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI

struct CreateAccountScreen: View {
    
    let onNavigate: (NavigationAction) -> Void
    
    var body: some View {
        AppScreen {
            Text("Create Account Screen")
            Button("Back") {
                onNavigate(.back)
            }
        }
    }
}

#Preview {
    CreateAccountScreen(onNavigate: { _ in })
}
