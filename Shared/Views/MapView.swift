//
//  MapView.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-02-03.
//
import MapKit
import SwiftUI

struct MapView: View {
    
    // Reference to police station store
    // Derived value
    
    @ObservedObject var store: PoliceStationStore
    
    // Map centered on GTA
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.6532, longitude: -79.3832), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: store.stations) { station in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: station.latitude, longitude: station.longitude)) {
                
                NavigationLink(
                    destination: StationDetail(policeStation: station)) {
                    Image(station.type)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 20, height: 20)
                        .shadow(radius:3)
                }
                
            }
            
        }
        .navigationTitle("Toronto Map")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MapView(store: testStore)
        }
    }
}
