//
//  DashboardScreen.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI

struct DashboardScreen: View {
    
    let userId: String
    let navigate: (NavigationAction) -> Void
    
    var body: some View {
		AppScreen {
			AppTopBar(title: "Dashboard")
		} content: {
            Text("User ID: \(userId)")
            
            Button("Back") {
                navigate(.back)
            }
        }
    }
}

#Preview {
    DashboardScreen(userId: "PREVIEW_ID", navigate: { _ in })
}
