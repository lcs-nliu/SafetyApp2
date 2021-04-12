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
    @State private var id = 0
    @State private var text = ""
    @State private var children = ""
    
    // Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        
        NavigationView {
        VStack {
            Form {
                TextField("Tip Name", text: $text)
                TextField("Description", text: $children)
                
            }
        }
        .navigationTitle("New Tip")
        .navigationBarItems(
            leading: Button(action: {
                showing = false
            }) {
                Text("Cancel")
            }, trailing: Button(action: {
                
                // Add the task to the list of tasks
                self.store.tips.append(Tip(text: text, children: children))
                
                
                // Dismiss this view
                showing = false
                
            }) {
                 
                        Text("Save")
                    
                }
            )
        
    }
        
    }
    
//    func saveTip () {
//
//        // Add the task to the list of tasks
//        self.store.tips.append(Tip(text: text, children: children))
//
//
//        // Dismiss this view
//        showing = false
//
//    }
}

struct AddTip_Previews: PreviewProvider {
    static var previews: some View {

            AddTip(store: testStore2, showing: .constant(true))
        
    }
}
