//
//  PoliceStore.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import Foundation

class LocationStore: ObservableObject {
    @Published var locations: [SafetyLocation]
    
    init(locations: [SafetyLocation] = []) {
        
        let url = Bundle.main.url(forResource: "safetylocations", withExtension: "json")!
        
        // Load contents of JSON
        
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the json file into the array
        
        if let decoded = try? JSONDecoder().decode([SafetyLocation].self, from: data) {
            self.locations = decoded
            
        } else {
            self.locations = []
        }
        
        
    }
    


    
    
    func filteredLocations(with typeLevel: String) -> [SafetyLocation] {
        if typeLevel == "All" {
            return locations
        } else {
            var matchingLocations: [SafetyLocation] = []
            
            var givenType = ""
            switch typeLevel {
            case "respite":
                givenType = "respite"
            case "police":
                givenType = "police"
            case "shelter":
                givenType = "shelter"
            default:
                break
                
                
                
            }
            
            for location in locations {
                if location.type == givenType {
                    matchingLocations.append(location)
                }
            }
            return matchingLocations
        }
    }
}

var testStore = LocationStore()
