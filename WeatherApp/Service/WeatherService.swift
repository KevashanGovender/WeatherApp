//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/13.
//

import Foundation

protocol WeatherService {
    func getCurrentWeather(lat: Double, lon: Double) async throws -> CurrentWeatherResponse
    func getWeatherForecase(lat: Double, lon: Double) async throws -> WeatherForecastResponse
}

class WeatherServiceImpl: AsyncNetworkService, WeatherService {
    
    private let baseUrl = "https://api.openweathermap.org/data/2.5/"
    private let apiKey = "9be61ac32630581b4d8264544da88300"
    private let successStatusRange = 200 ..< 300
    
    func getCurrentWeather(lat: Double, lon: Double) async throws -> CurrentWeatherResponse {
        return try await get(endpoint: "units=metric&lat=\(lat)&lon=\(lon)&appid=\(apiKey)")
    }
    
    func getWeatherForecase(lat: Double, lon: Double) async throws -> WeatherForecastResponse {        
        return try await get(endpoint: "forecast?units=metric&lat=\(lat)&lon=\(lon)&appid=\(apiKey)")
    }
}