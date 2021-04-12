//
//  HelpPage.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-03-04.
//

import SwiftUI

struct HelpPage: View {


    // Reference to safety location store
    // Derived value
    
    @ObservedObject var store: TipsStore
    
    // Controls whether add task is showing
    @State var showingAddTip = false
    
    var body: some View {
    

            List (store.tips) { tip in

            VStack (alignment: .leading, spacing: 5) {
            
                HStack {
                Image(systemName: "questionmark.circle")

                Text(tip.text)
                .bold()
                .font(.title2)
  }
            Text(tip.children)
                    
                }
            
        }
        
    
        .navigationTitle("Tips")
        .navigationBarItems(
       trailing: Button(action: { self.showingAddTip =
                                                        true }) {
                
                Text("Add")
                
            }
            
            )
            .sheet(isPresented: $showingAddTip) {
                AddTip(store: store, showing: $showingAddTip)
                    
        
        
    }
        
    }

    
}

struct HelpPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HelpPage(store: testStore2)
        }
    }
}



