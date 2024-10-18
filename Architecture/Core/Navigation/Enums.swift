//
//  Route.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

/// Defines the navigation routes used in the app.
enum Route: Hashable {
    case createAccount, dashboard(userId: String), signIn
}

/// Defines the general actions for navigation.
enum NavigationAction {
    case back, toRoute(_ route: Route)
}
