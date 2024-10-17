//
//  DashboardScreen.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI

struct DashboardScreen: View {
    
    let userId: String
    let onNavigate: (NavigationAction) -> Void
    
    var body: some View {
        AppScreen {
            Text("Dashboard Screen")
            Text("User ID: \(userId)")
            
            Button("Back") {
                onNavigate(.back)
            }
        }
    }
}

#Preview {
    DashboardScreen(userId: "PREVIEW_ID", onNavigate: { _ in })
}
