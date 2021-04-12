//
//  TipsStore.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-04-12.
//

import Foundation
class TipsStore: ObservableObject {
    @Published var tips: [Tip]
    
    init() {
        // Pointer to JSON
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        // Load contents of JSON
        
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the json file into the array
                tips = try! JSONDecoder().decode([Tip].self, from: data)


        
    }
}

var testStore2 = TipsStore()
