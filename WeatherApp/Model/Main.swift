//
//  Main.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/13.
//

import Foundation

struct Main: Codable {
    let temp, tempMin, tempMax: Double

    enum CodingKeys: String, CodingKey {
        case temp
        case tempMin = "temp_min"
        case tempMax = "temp_max"
    }
}
