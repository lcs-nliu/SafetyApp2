//
//  PoliceStation.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import Foundation

struct PoliceStation: Decodable, Identifiable {
    let id: Int
    let name: String
    let address: String
    let division: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    
    static let example = PoliceStation(id: 1, name: "Toronto Police Service - 11 Division", address: "2054 Davenport Rd", division: "Division 11", latitude: 43.671088, longitude: -79.460529, heroPicture: "div11")
    
}
