//
//  LocationRepository.swift
//  WeatherApp
//
//  Created by Govender, Kevashan K on 2024/07/14.
//

import Foundation
import Factory

protocol LocationRepository {
    func requestLocationPermission()
    func getLocationCords() throws -> (lat: Double, lon: Double)
}

struct LocationRepositoryImpl: LocationRepository {
    @Injected(\.locationService)
    var locationService
    
    func requestLocationPermission() {
        locationService.requestLocationPermission()
    }
    
    func getLocationCords() throws -> (lat: Double, lon: Double) {
        return try locationService.getLocationCords()
    }
}
