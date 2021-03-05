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
    let type: String
    let phone: Int
    let website: String
    let unitCommander: String
    let secInCharge: String
    let communityResponse: String
    let communityRelations: String
    let crimePrevention: String
    let about: String
    
    static let example = PoliceStation(id: 1, name: "Toronto Police Service - 11 Division", address: "2054 Davenport Rd", division: "Division 11", latitude: 43.671088, longitude: -79.460529, heroPicture: "div11", type: "police", phone: 4168085500, website: "http://www.torontopolice.on.ca/d55/", unitCommander: "Superintendent Reuben Stroble", secInCharge: "Inspector Lisabet Benoit", communityResponse: "Staff Sergeant James Hung, 416-808-5419", communityRelations: "Constable Norm Leung, 416-808-5408", crimePrevention: "Constable Richard Santos-Vicentino, 416-808-5429", about: "The station is open 24 hours per day, and is located at 101 Coxwell Ave, at the corner of Dundas St. East, in the City of Toronto. There is visitor parking available. As part of the Toronto police Service modernization plan, 54 and 55 Divisions have been consolidated.")
    
}
