//
//  LocationService.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/14.
//

import Foundation
import CoreLocation
import Factory

class LocationService: NSObject, ObservableObject {
        
    private let locationManager = CLLocationManager()
    
    @Published var userLocation: CLLocation?
    
    public static let shared = LocationService()
    
    private override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = .leastNormalMagnitude
        locationManager.startUpdatingLocation()
    }
    
    func requestLocation() {
        locationManager.requestWhenInUseAuthorization()
    }
    
}

extension LocationService: CLLocationManagerDelegate {
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch locationManager.authorizationStatus {
        case .notDetermined:
            debugPrint("Location permission not determined")
        case .restricted:
            debugPrint("Location permission restricted")
        case .denied:
            debugPrint("Location permission denied")
        case .authorizedAlways:
            debugPrint("Location permission authorizedAlways")
        case .authorizedWhenInUse:
            debugPrint("Location permission authorizedWhenInUse")
        case .authorized:
            debugPrint("Location permission authorized")
        @unknown default:
            debugPrint("Location permission unknown default")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastLocation = locations.last else { return }
        self.userLocation = lastLocation
    }
}
