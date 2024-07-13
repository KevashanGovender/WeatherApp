//
//  AsyncNetworkService.swift
//  WeatherApp
//
//  Created by Kevashan Govender on 2024/07/14.
//

import Foundation

class AsyncNetworkService {
    
    private let baseUrl = "https://api.openweathermap.org/data/2.5/"
    private let successStatusRange = 200 ..< 300

    func get<T: Codable>(endpoint: String) async throws -> T {
        guard let url = URL(string: baseUrl + endpoint) else {
            throw ServiceError.invalidUrl
        }
        
        let (data, urlResponse) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = urlResponse as? HTTPURLResponse else {
            throw ServiceError.invalidResponse
        }
        
        if successStatusRange.contains(httpResponse.statusCode) {
            let serviceResponse = try JSONDecoder().decode(T.self, from: data)
            return serviceResponse
        } else {
            throw ServiceError.serverError
        }
    }
}

enum ServiceError: Error {
    case invalidUrl
    case invalidResponse
    case serverError
}
