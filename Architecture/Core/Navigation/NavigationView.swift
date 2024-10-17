//
//  ContentView.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI


/// A view responsible for defining the navigation logic for the app.
struct NavigationView: View {
    
    @State private var path: NavigationPath = NavigationPath()
    private var isStartScreen: Bool { path.count <= 1 }
    private let vm: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            ProgressView()
                .task {
                    goToStartScreen()
                }
                .navigationDestination(for: Route.self) { route in
                    destination(for: route)
                        .navigationBarBackButtonHidden(isStartScreen)
                }
        }
    }
    
    /// Navigate to the relevant start screen if there are no items in the `NavigationPath`.
    private func goToStartScreen() {
        if path.isEmpty {
            let currentUser = vm.getCurrentUser()
            let route: Route = if let currentUser { .dashboard(userId: currentUser.uuid) } else { .signIn }
            path.onNavigationAction(for: .toRoute(route: route))
        }
    }
    
    /// Provide a destination `View` based on a given `Route`.
    @ViewBuilder
    private func destination(for route: Route) -> some View {
        switch route {
        case .createAccount:
            CreateAccountScreen(onNavigate: { path.onNavigationAction(for: $0) })
        case .dashboard(let userId):
            Text("Dashboard Screen")
            Text("User ID: \(userId)")
        case .signIn:
            SignInScreen(onNavigate: { path.onNavigationAction(for: $0) })
        }
    }
}

#Preview {
    NavigationView()
}
