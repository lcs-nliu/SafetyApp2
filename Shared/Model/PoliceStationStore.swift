//
//  PoliceStore.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import Foundation

class PoliceStationStore: ObservableObject {
    var stations: [PoliceStation]
    
    init() {
        // Pointer to JSON
        let url = Bundle.main.url(forResource: "policelocations", withExtension: "json")!
        
        // Load contents of JSON
        
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the json file into the array
        
        stations = try! JSONDecoder().decode([PoliceStation].self, from: data)


        
    }
}

var testStore = PoliceStationStore()
