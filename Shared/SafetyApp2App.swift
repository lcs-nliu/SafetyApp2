//
//  SafetyApp2App.swift
//  Shared
//
//  Created by Liu, Bojun on 2021-01-28.
//

import SwiftUI

@main
struct SafetyApp2App: App {
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MapView (store: testStore)
            }
        }
    }
}
