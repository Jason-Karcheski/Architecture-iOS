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
	
	/// Attempt a sign in with the provided email and password.
	/// - Parameters:
	/// 	- email: The users email address.
	/// 	- password: The user's password.
	func signIn(email: String, password: String) -> Result<AppUser, Error>
	
	/// Attempt to create a new user account with the provided email and password.
	/// - Parameters:
	/// 	- email: The users email address
	/// 	- password: The users password.
	func createAccount(email: String, password: String) -> Result<AppUser, Error>
	
	/// Sign out from any local sessions.
	func signOut() -> Result<Void, Error>
    
}
