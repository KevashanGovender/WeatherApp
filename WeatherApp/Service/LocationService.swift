//
//  LocationService.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/14.
//

import Foundation
import CoreLocation

protocol LocationService {
    func getLocationCords() throws -> (lat: Double, lon: Double)
}

struct LocationServiceImpl: LocationService {
    
    private let locationManager = CLLocationManager()
    
    func getLocationCords() throws -> (lat: Double, lon: Double) {
        if locationManager.authorizationStatus == .authorizedWhenInUse || locationManager.authorizationStatus == .authorizedAlways {
            guard let location = locationManager.location else {
                throw LocationServiceError.noLocationError
            }
            
            return (location.coordinate.latitude, location.coordinate.longitude)
        } else {
            throw LocationServiceError.permissionNotGranted
        }
    }
    
}

enum LocationServiceError: Error {
    case noLocationError
    case permissionNotGranted
}
