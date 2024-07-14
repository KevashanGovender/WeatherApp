//
//  ForecaseResponse.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/13.
//

import Foundation

struct WeatherForecastResponse: Codable {
    let list: [WeatherList]
    
    func toDto() throws -> WeatherForecastDTO {
        guard !list.isEmpty else {
            throw WeatherForecastResponseError.transformationError
        }
        
        let weatherForecastDTO = WeatherForecastDTO(
            weatherForecasts: list.map { weatherForecast in
                DayForecast(
                    date: weatherForecast.dt,
                    weatherDescription: weatherForecast.weather.description,
                    currentTemp: weatherForecast.main.temp,
                    minTemp: weatherForecast.main.tempMin,
                    maxTemp: weatherForecast.main.tempMax
                )
            }
        )
        
        return weatherForecastDTO
    }

}

struct WeatherList: Codable {
    let dt: Int
    let main: Main
    let weather: [Weather]

    enum CodingKeys: String, CodingKey {
        case dt, main, weather
    }
}

enum WeatherForecastResponseError: Error {
    case transformationError
}
