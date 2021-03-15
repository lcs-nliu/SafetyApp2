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
    @ObservedObject var respiteStore: RespiteCentreStore
//    @ObservedObject private var locationManager = LocationManager()
    
    // Map centered on GTA
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.6532, longitude: -79.3832), span: MKCoordinateSpan(latitudeDelta: 0.4, longitudeDelta: 0.3))
 
       
        
    
//    private func setCurrentLocation() {
//locationManager.$location.sink { location in
//            region = MKCoordinateRegion(center: location?.coordinate ?? CLLocationCoordinate2D(), latitudinalMeters: 5000, longitudinalMeters: 5000)
//        }
//
//    }
    
    var body: some View {
    
//        VStack {
//        if locationManager.location != nil {
//
//            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil, annotationItems: store.stations) { station in
//
//
//            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: station.latitude, longitude: station.longitude)) {
//
//                NavigationLink(
//                    destination: StationDetail(policeStation: station)) {
//                    Image(station.type)
//                        .resizable()
//                        .cornerRadius(10)
//                        .frame(width: 20, height: 20)
//                        .shadow(radius:3)
//                }
//
//            }
//
//        }
//
//        } else {
//            Text("Loading map...")
//        }
//        }
//
//        .onAppear {
//        setCurrentLocation()
//        }
        
        
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
            MapView(store: testStore, respiteStore: testStore2)
        }
    }
}

