//
//  FructusApp.swift
//  Shared
//
//  Created by Dzmitry Matsiulka on 8/17/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else
            {
                ContentView()
            }
        }
    }
}
