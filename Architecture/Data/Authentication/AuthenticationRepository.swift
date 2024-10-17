//
//  AuthenticationRepository.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import Foundation

protocol AuthenticationRepository {
    
    /// Get the current user if there is one signed in to the app.
    func getCurrentUser() -> AppUser?
    
}

final class AuthenticationRepositoryImpl: AuthenticationRepository {
    
    func getCurrentUser() -> AppUser? {
        // In a real app we would make a call to the auth service here to see if there was a user signed in.
        // For example, Firebase: Auth.auth().currentUser and then see if that is nil or not to get a return value here.
        return AppUser(
            uuid: UUID().uuidString,
            username: "Fake Tester",
            email: "test@ccount.com"
        )
    }
    
}
