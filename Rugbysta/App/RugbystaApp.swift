//
//  RugbystaApp.swift
//  Rugbysta
//
//  Created by Ameer Hamza on 04/04/2022.
//

import SwiftUI

@main
struct RugbystaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
