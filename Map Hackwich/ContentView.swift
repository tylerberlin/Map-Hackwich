//
//  ContentView.swift
//  Map Hackwich
//
//  Created by Tyler Berlin on 1/31/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 42.15704,
                longitude: -88.14812),
            span: MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05)
        )
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Map(coordinateRegion: $region)
        }
    }
}

#Preview {
    ContentView()
}
