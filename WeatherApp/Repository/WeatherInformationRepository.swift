//
//  WeatherInformationRepository.swift
//  WeatherApp
//
//  Created by Govender, Kevashan K on 2024/07/14.
//

import Foundation
import Factory

protocol WeatherInformationRepository {
    func getCurrentWeather(lat: Double, lon: Double) async throws -> CurrentWeatherDTO
    func getWeatherForecast(lat: Double, lon: Double) async throws -> WeatherForecastDTO
    
}

struct WeatherInformationRepositoryImpl: WeatherInformationRepository {
    
    @Injected(\.weatherService)
    var weatherService
    
    func getCurrentWeather(lat: Double, lon: Double) async throws -> CurrentWeatherDTO {
        let response = try await weatherService.getCurrentWeather(lat: lat, lon: lon)
        
        return try response.toDto()
    }
    
    func getWeatherForecast(lat: Double, lon: Double) async throws -> WeatherForecastDTO {
        let response = try await weatherService.getWeatherForecast(lat: lat, lon: lon)
        
        return try response.toDto()
        
    }

}

extension Container {
    var weatherInformationRepositoy: Factory<WeatherInformationRepository> {
        Factory(self) {
            WeatherInformationRepositoryImpl()
        }
    }
}


