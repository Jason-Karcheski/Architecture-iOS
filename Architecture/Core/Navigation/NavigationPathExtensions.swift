//
//  NavigationPathExtensions.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import Foundation
import SwiftUI

extension NavigationPath {
    
    /// Perform navigation based on a `NavigationAction`.
    mutating func onNavigationAction(_ action: NavigationAction) {
        switch action {
        case .back:
            self.navigateBack()
        case .toRoute(let route):
            self.navigateToRoute(route)
        }
    }
    
    /// Navigate to a destination screen via a `Route`.
    mutating private func navigateToRoute(_ route: Route) {
        self.append(route)
    }
    
    /// Navigate back one node on a `NavigationPath`. If the path is empty then nothing will happen.
    mutating private func navigateBack() {
        let isStartingScreen = self.count == 1
        if !self.isEmpty && !isStartingScreen {
            self.removeLast()
        }
    }
    
}
