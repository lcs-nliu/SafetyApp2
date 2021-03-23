//
//  StationDetail.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import SwiftUI

struct LocationDetail: View {
    
    // A copy of an instance of a structure will be provided to this view
    let safetyLocation: SafetyLocation
    
    var body: some View {
        
        ScrollView {

                Image(safetyLocation.heroPicture)
                    .resizable()
                    .scaledToFit()
            
            VStack (alignment: .leading, spacing: 1)  {
            
                if !safetyLocation.address.isEmpty {
                Text("Address: \(safetyLocation.address)")
                    .padding([.horizontal,.bottom])

                }
                
                HStack {
                Text("Phone:")
        Link("\(safetyLocation.phone)", destination: URL(string: "tel:1\(safetyLocation.phone)")!)
                }
                .padding([.horizontal,.bottom])
                
    
                Text("Website:")
                    .padding(.horizontal)
                Link("\(safetyLocation.website)", destination: URL(string:"\(safetyLocation.website)")!)
                .padding([.horizontal,.bottom])


                // Conditionally show picture
                if !safetyLocation.picture.isEmpty {
                    
                    Text(safetyLocation.about)
                        .padding([.horizontal,.bottom])
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Image(safetyLocation.picture)
                        .resizable()
                        .scaledToFit()
                    
                    Spacer()
                    
                } else {
                    
                    // Show only the about
                    Text(safetyLocation.about)
                        .padding([.horizontal,.bottom])
                        .fixedSize(horizontal: false, vertical: true)
                }
                
            }
                
            }
            .navigationTitle(safetyLocation.name)
            
        }
    }


struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetail(safetyLocation: SafetyLocation.respiteExample)
        }
    }
}
