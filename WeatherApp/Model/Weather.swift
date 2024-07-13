//
//  Weather.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/13.
//

import Foundation

struct Weather: Codable {
    let id: Int
    let main, weatherDescription, icon: String

    enum CodingKeys: String, CodingKey {
        case id
        case main
        case weatherDescription = "description"
        case icon
    }
}
