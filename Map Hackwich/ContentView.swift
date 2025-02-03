//
//  ContentView.swift
//  Map Hackwich
//
//  Created by Tyler Berlin on 1/31/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var startPosition = MapCameraPosition.userLocation(fallback: .automatic)
    @StateObject var locationManager = LocationManager()
    @State private var places = [Place(name: "Barrington High School",
                                       coordinate: CLLocationCoordinate2D(
                                        latitude: 42.1565, longitude: -88.1480))]
    var body: some View {
        Map(position: $startPosition){
            UserAnnotation()
            ForEach(places) { place in
                Annotation(place.name, coordinate: place.coordinate) {
                    Image(systemName: "star.circle")
                        .resizable()
                        .foregroundStyle(.red)
                        .frame(width: 44, height: 44)
                        .background(.white)
                        .clipShape(.circle)
                }
                
            }
        }
    }
}

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

#Preview {
    ContentView()
}
