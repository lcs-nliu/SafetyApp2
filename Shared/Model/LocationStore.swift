//
//  PoliceStore.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import Foundation

class LocationStore: ObservableObject {
    var locations: [SafetyLocation]
    
    init() {
        // Pointer to JSON
        let url = Bundle.main.url(forResource: "safetylocations", withExtension: "json")!
        
        // Load contents of JSON
        
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the json file into the array
        
        locations = try! JSONDecoder().decode([SafetyLocation].self, from: data)


        
    }
}

var testStore = LocationStore()
