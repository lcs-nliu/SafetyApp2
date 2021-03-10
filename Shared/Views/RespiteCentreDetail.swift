//
//  RespiteCentreDetail.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-03-09.
//

import SwiftUI

struct RespiteCentreDetail: View {
    
    // An instance of the structure
    
    let respiteCentre: RespiteCentre
    
    var body: some View {
        ScrollView {
            Image(respiteCentre.logoPicture)
                .resizable()
                .scaledToFit()
        
        VStack (alignment: .leading, spacing: 1)  {
            
            Text("Address: \(respiteCentre.address)")
                .padding([.horizontal,.bottom])

            HStack {
            Text("Phone:")
    Link("\(respiteCentre.phone)", destination: URL(string: "tel:1\(respiteCentre.phone)")!)
            }
            .padding([.horizontal,.bottom])
            
            HStack {
            Text("Website:")

            Link("\(respiteCentre.website)", destination: URL(string:"\(respiteCentre.website)")!)
            }
            .padding([.horizontal,.bottom])
            
            Text("Client Group: \(respiteCentre.clientGroup)")
                .padding([.horizontal,.bottom])
            
            Text(respiteCentre.about)
                .padding([.horizontal,.bottom])

            
            
            
        }
        .navigationTitle(respiteCentre.name)
        
        }
    }
}

struct RespiteCentreDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        RespiteCentreDetail(respiteCentre: RespiteCentre.respiteExample)
        }
    }
}
