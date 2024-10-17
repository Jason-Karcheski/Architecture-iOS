//
//  AppUser.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import Foundation


struct AppUser {
    let uuid: String
    let username: String?
    let email: String?
    
    init(uuid: String, username: String? = nil, email: String? = nil) {
        self.uuid = uuid
        self.username = username
        self.email = email
    }
}
