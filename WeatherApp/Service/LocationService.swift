//
//  LocationService.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/14.
//

import Foundation
import CoreLocation
import Factory

protocol LocationService {
    func requestLocationPermission()
    func getLocationCords() throws -> (lat: Double, lon: Double)
}

struct LocationServiceImpl: LocationService {
    
    private let locationManager = CLLocationManager()
    
    func requestLocationPermission() {
        locationManager.requestWhenInUseAuthorization()
    }
    
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

extension Container {
    var locationService: Factory<LocationService> {
        Factory(self) {
            LocationServiceImpl()
        }
    }
}

enum LocationServiceError: Error {
    case noLocationError
    case permissionNotGranted
}
