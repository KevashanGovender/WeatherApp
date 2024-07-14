//
//  CurrentWeatherResponse.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/13.
//

import Foundation

struct CurrentWeatherResponse: Codable {
    let weather: [Weather]
    let main: Main
    
    func toDto() throws -> CurrentWeatherDTO {
        guard let weatherDescription = weather.first?.weatherDescription else {
            throw CurrentWeatherResponseError.transformationError
        }
        return CurrentWeatherDTO(weatherDesc: weatherDescription, currentTemp: main.temp, minTemp: main.tempMin, maxTemp: main.tempMax)
    }
}

enum CurrentWeatherResponseError: Error {
    case transformationError
}
