//
//  WeatherForcastDTO.swift
//  WeatherApp
//
//  Created by Govender, Kevashan K on 2024/07/14.
//

import Foundation

struct WeatherForecastDTO {
    var weatherForcasts: [DayForcast]
}

struct DayForecast {
    var date: Int
    var weatherDescription: String
    var currentTemp: Double
    var minTemp: Double
    var maxTemp: Double
}
