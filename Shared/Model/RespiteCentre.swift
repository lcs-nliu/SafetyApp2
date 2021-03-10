//
//  PoliceStation.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import Foundation

struct RespiteCentre: Decodable, Identifiable {
    let id: Int
    let name: String
    let address: String
    let latitude: Double
    let longitude: Double
    let phone: String
    let website: String
    let clientGroup: String
    let logoPicture: String
    let picture: String
    let about: String
    let type: String
    

    static let respiteExample = RespiteCentre(id: 7, name: "Better Living Centre at Exhibition Place", address: "195 Princess Blvd", latitude: 43.63182975294361, longitude: -79.42085475971344, phone: "4163384766", website: "www.homesfirst.on.ca", clientGroup: "Mixed Adult", logoPicture: "homesfirst", picture: "betterLiving", about: "Homes come in many shapes and sizes but each is a safe, stable refuge. With a home, people can be part of a community, obtain ID, register for social services, and keep in touch with family and friends. With a home, people gain respect, dignity, and the ability to care for themselves and others. With a home, people can build a future. Everyone needs a home.", type: "respite")
    
}
