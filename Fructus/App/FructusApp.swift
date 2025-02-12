//
//  FructusApp.swift
//  Fructus
//
//  Created by Abiodun Osagie on 28/01/2025.
//

import SwiftUI

@main
struct FructusApp: App {
   // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
