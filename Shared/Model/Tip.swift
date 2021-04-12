//
//  Tip.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-04-11.
//

import Foundation

struct Tip: Decodable, Identifiable {
    let id: Int
    let text: String
    let children: String
}
