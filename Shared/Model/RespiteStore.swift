//
//  PoliceStore.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import Foundation

class RespiteCentreStore: ObservableObject {
    var centres: [RespiteCentre]
    
    init() {
        // Pointer to JSON
        let url = Bundle.main.url(forResource: "respitelocations", withExtension: "json")!
        
        // Load contents of JSON
        
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the json file into the array
        
        centres = try! JSONDecoder().decode([RespiteCentre].self, from: data)


        
    }
}

var testStore2 = RespiteCentreStore()
