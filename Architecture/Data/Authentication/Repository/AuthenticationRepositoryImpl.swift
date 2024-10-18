//
//  AuthenticationRepositoryImpl.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import Foundation

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
	
	func signIn(email: String, password: String) -> Result<AppUser, any Error> {
		// TODO: need to do this
		return .success(AppUser(
			uuid: UUID().uuidString,
			username: "Fake Tester",
			email: "test@ccount.com"
		))
	}
	
	func createAccount(email: String, password: String) -> Result<AppUser, any Error> {
		// TODO: need to do this
		return .success(AppUser(
			uuid: UUID().uuidString,
			username: "Fake Tester",
			email: "test@ccount.com"
		))
	}
	
	func signOut() -> Result<Void, any Error> {
		// TODO: need to do this
		return .success(())
	}
	
}
