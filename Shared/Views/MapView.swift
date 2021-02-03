//
//  MapView.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-02-03.
//
import MapKit
import SwiftUI

struct MapView: View {
    
    
    // Map centered on GTA
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .navigationTitle("Toronto Map")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        MapView()
        }
    }
}
