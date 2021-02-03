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
            VStack {
                
                Image(policeStation.heroPicture)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                Text(policeStation.division)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .font(.title2)
                    Spacer()
    
                    
                }
                
                
                HStack {
                Text("Address: \(policeStation.address)")
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .font(.title2)
                    Spacer()
                    
                }
                
                
                
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
