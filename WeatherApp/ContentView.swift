//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/13.
//

import SwiftUI
import Factory

struct ContentView: View {
    @ObservedObject var locationService = LocationService.shared

    var body: some View {
        VStack {
            Group {
                if locationService.userLocation != nil {
                    WeatherView()
                } else {
                    LocationPermissionRequestView()
                }
            }
        }
        .ignoresSafeArea()
        .padding()
    }
}

#Preview {
    ContentView()
}
