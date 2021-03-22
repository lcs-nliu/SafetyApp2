//
//  PoliceStation.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import Foundation

struct SafetyLocation: Decodable, Identifiable {
    let id: Int
    let name: String
    let address: String
    let phone: String
    let website: String
    let latitude: Double
    let longitude: Double
    let about: String
    let heroPicture: String
    let picture: String
    let type: String
  

    

    static let respiteExample = SafetyLocation(id: 7, name: "Better Living Centre at Exhibition Place", address: "195 Princess Blvd", phone: "4163384766", website: "www.homesfirst.on.ca", latitude: 43.63182975294361, longitude: -79.42085475971344, about: "Homes come in many shapes and sizes but each is a safe, stable refuge. With a home, people can be part of a community, obtain ID, register for social services, and keep in touch with family and friends. With a home, people gain respect, dignity, and the ability to care for themselves and others. With a home, people can build a future. Everyone needs a home.", heroPicture: "homesfirst", picture:  "betterLiving", type: "respite")
    
    static let policeExample = SafetyLocation(id: 1, name: "Toronto Police Service - 11 Division", address: "2054 Davenport Rd", phone: "4168081100", website: "http://www.torontopolice.on.ca/d11/", latitude: 43.671088, longitude: -79.460529, about: "The station is open 24 hours per day, and is located at 101 Coxwell Ave, at the corner of Dundas St. East, in the City of Toronto. There is visitor parking available. As part of the Toronto police Service modernization plan, 54 and 55 Divisions have been consolidated.", heroPicture: "div11", picture: "", type: "police")
    
}
