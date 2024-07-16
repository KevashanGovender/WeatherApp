//
//  WeatherInformationRepositoryTests.swift
//  WeatherAppTests
//
//  Created by Govender, Kevashan K on 2024/07/16.
//

import Foundation
import Cuckoo
import Factory
import XCTest
import CoreLocation

@testable import WeatherApp

class WeatherInformationRepositoryImplTests: XCTestCase {
    var mockWeatherService: MockWeatherService!
    var repository: WeatherInformationRepositoryImpl!

    override func setUp() {
        super.setUp()
        mockWeatherService = MockWeatherService()
        
        let _ = Container.shared.weatherService.register {
            self.mockWeatherService
        }
        
        repository = WeatherInformationRepositoryImpl()
    }

    override func tearDown() {
        mockWeatherService = nil
        repository = nil
        super.tearDown()
    }

    func testGetCurrentWeatherSuccess() async throws {
        let expectedWeather = Weather(id: 1, main: "Clear", weatherDescription: "clear sky", icon: "sun")
        
        let mockResponse = CurrentWeatherResponse(weather: [expectedWeather],
                                                  main: Main(temp: 8, tempMin: 4, tempMax: 10))
        stub(mockWeatherService) { stub in
            when(stub.getCurrentWeather(lat: any(), lon: any())).thenReturn(mockResponse)
        }
        
        let result = try await repository.getCurrentWeather(lat: 35.0, lon: 139.0)
        
        XCTAssertEqual("clear sky", result.weatherDesc)
        XCTAssertEqual(8, result.currentTemp)
        XCTAssertEqual(4, result.minTemp)
        XCTAssertEqual(10, result.maxTemp)
        
        verify(mockWeatherService).getCurrentWeather(lat: 35.0, lon: 139.0)
    }
    
    func testGetCurrentWeatherError() async {
        stub(mockWeatherService) { stub in
            when(stub.getCurrentWeather(lat: any(), lon: any())).thenThrow(ServiceError.serverError)
        }
        
        do {
            let _ = try await repository.getCurrentWeather(lat: 35.0, lon: 139.0)
            XCTFail("Expected failure, but got success")
        } catch {
            verify(mockWeatherService).getCurrentWeather(lat: 35.0, lon: 139.0)
            XCTAssertEqual(error as? ServiceError, .serverError)
        }
    }

    func testGetWeatherForecastSuccess() async throws {
        let mockResponse = WeatherForecastResponse(list:
                                                    [WeatherList(dt: 1234567890, main: Main(temp: 8, tempMin: 4, tempMax: 10), weather: [Weather(id: 1, main: "clear sky", weatherDescription: "clear sky", icon: "sun")])]
        )
        stub(mockWeatherService) { stub in
            when(stub.getWeatherForecast(lat: any(), lon: any())).thenReturn(mockResponse)
        }

        // When
        let result = try await repository.getWeatherForecast(lat: 35.0, lon: 139.0)

        XCTAssertTrue(result.weatherForcasts.count == 1)
        XCTAssertEqual(8, result.weatherForcasts.first?.currentTemp)
        XCTAssertEqual(4, result.weatherForcasts.first?.minTemp)
        XCTAssertEqual(10, result.weatherForcasts.first?.maxTemp)
        XCTAssertNotNil(result.weatherForcasts.first?.weatherDescription)
        
        verify(mockWeatherService).getWeatherForecast(lat: 35.0, lon: 139.0)
    }


    func testGetWeatherForecastThrowsError() async {
        stub(mockWeatherService) { stub in
            when(stub.getWeatherForecast(lat: any(), lon: any())).thenThrow(ServiceError.serverError)
        }

        do {
            let _ = try await repository.getWeatherForecast(lat: 35.0, lon: 139.0)
            XCTFail("Expected failure, but got success")
        } catch {
            XCTAssertEqual(error as? ServiceError, .serverError)
        }
    }
}
