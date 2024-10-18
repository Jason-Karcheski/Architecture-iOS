//
//  AppTopBar.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI

struct AppTopBar: View {
	
	let title: String
	
    var body: some View {
		HStack {
			Text(title)
				.font(.headline)
				.fontWeight(.bold)
				.padding()
		}
    }
}

#Preview {
	AppTopBar(title: "Preview")
}
