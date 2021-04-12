//
//  Tip.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-04-11.
//

import Foundation

class Tip: Decodable, Identifiable, ObservableObject {
    var text: String
    var children: String
    
    internal init(text: String, children: String) {
        self.text = text
        self.children = children
    }
    
}
