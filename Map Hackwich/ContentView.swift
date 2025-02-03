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

    var body: some View {
        Map(position: $startPosition){
            UserAnnotation()
        }
    }
}


#Preview {
    ContentView()
}
