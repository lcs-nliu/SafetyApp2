//
//  AddTip.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-04-12.
//

import SwiftUI

struct AddTip: View {
    // Get a reference to the store of tips
    @ObservedObject var store: TipsStore
    
    // Details of new tip
    @State private var text = ""
    @State private var children = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Tip Name", text: $text)
                TextField("Description", text: $children)
                
            }
        }
        .navigationTitle("New Reminder")
        
    }
}

struct AddTip_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        AddTip(store: testStore2)
        }
    }
}
