//
//  ForecaseResponse.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/13.
//

import Foundation

struct WeatherForecastResponse: Codable {
    let list: [WeatherList]
}

struct WeatherList: Codable {
    let dt: Int
    let main: Main
    let weather: [Weather]

    enum CodingKeys: String, CodingKey {
        case dt, main, weather
    }
}

