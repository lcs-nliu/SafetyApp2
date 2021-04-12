//
//  MapView.swift
//  SafetyApp2
//
//  Created by Liu, Bojun on 2021-02-03.
//
import MapKit
import SwiftUI


struct MapView: View {

    
    // Reference to safety location store
    // Derived value
    
    @ObservedObject var store: LocationStore
    
    
    // Map centered on GTA
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.6532, longitude: -79.3832), span: MKCoordinateSpan(latitudeDelta: 0.4, longitudeDelta: 0.3))
    
    var body: some View {
        
        Map(coordinateRegion: $region,  showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: store.locations) { place in
            
            
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)) {
                
                NavigationLink(destination: LocationDetail(safetyLocation: place)) {
                    Image(place.type)
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




