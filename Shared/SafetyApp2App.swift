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
            
            TabView {
                NavigationView {
                    MapView (store: testStore, respiteStore: testStore2)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView{
                    HelpPage()
                }
                .tabItem {
                    Image(systemName: "questionmark.circle.fill")
                    Text("Help")
                }
                
            }
        }
    }
}
