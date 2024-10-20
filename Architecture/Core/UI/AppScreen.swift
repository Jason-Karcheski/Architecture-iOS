//
//  AppScreen.swift
//  Architecture
//
//  Created by Jason Karcheski on 17/10/2024.
//

import SwiftUI

/// A template `View` for all screen layouts.
struct AppScreen<Content: View>: View {
    
    let content: Content
	let topbar: AppTopBar
    
    init(
		topbar: () -> AppTopBar,
		@ViewBuilder content: () -> Content
	) {
		self.topbar = topbar()
        self.content = content()
    }
    
    var body: some View {
		VStack {
			topbar
			
			VStack {
				content
				
				Spacer()
			}
		}
    }
}

