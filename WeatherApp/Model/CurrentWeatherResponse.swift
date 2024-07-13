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
}
