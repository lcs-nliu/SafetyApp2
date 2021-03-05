//
//  StationDetail.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-01-28.
//

import SwiftUI

struct StationDetail: View {
    
    // A copy of an instance of a structure will be provided to this view
    let policeStation: PoliceStation
    
    var body: some View {
        
        ScrollView {

                Image(policeStation.heroPicture)
                    .resizable()
                    .scaledToFit()
            
            VStack (alignment: .leading, spacing: 1)  {
            
                Text("Address: \(policeStation.address)")
                    .padding([.horizontal,.bottom])

                HStack {
                Text("Phone:")
        Link("\(policeStation.phone)", destination: URL(string: "tel:1\(policeStation.phone)")!)
                }
                .padding([.horizontal,.bottom])
                
    
                Text("Website:")
                    .padding(.horizontal)
                Link("\(policeStation.website)", destination: URL(string:"\(policeStation.website)")!)
                .padding([.horizontal,.bottom])

                Text("Unit Commander: \(policeStation.unitCommander)")
                    .padding([.horizontal,.bottom])
                
                Text("2nd in Charge: \(policeStation.secInCharge)")
                    .padding([.horizontal,.bottom])

                Text("Community Response Unit Manager: \(policeStation.communityResponse)")
                    .padding([.horizontal,.bottom])
                
                Text("Community Relations Officer: \(policeStation.communityRelations)")
                    .padding([.horizontal,.bottom])
                
                Text("Crime Prevention Officer: \(policeStation.crimePrevention)")
                    .padding([.horizontal,.bottom])
                
                Text(policeStation.about)
                    .padding([.horizontal,.bottom])


                
            }
            .navigationTitle(policeStation.name)
            
        }
    }
}

struct StationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StationDetail(policeStation: PoliceStation.example)
        }
    }
}
