//
//  NavigationViewModel.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import Foundation
import SwiftUI

extension NavigationView {
    
    @Observable
    final class ViewModel {
        private let authenticationRepository: AuthenticationRepository
        
        init(authenticationRepository: AuthenticationRepository = AuthenticationRepositoryImpl()) {
            self.authenticationRepository = authenticationRepository
        }
        
        func getCurrentUser() -> AppUser? {
            return authenticationRepository.getCurrentUser()
        }
    }
}
