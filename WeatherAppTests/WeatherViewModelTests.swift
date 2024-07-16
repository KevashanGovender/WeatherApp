//
//  WeatherViewModelTests.swift
//  WeatherAppTests
//
//  Created by Govender, Kevashan K on 2024/07/16.
//

import Foundation
import XCTest
import Cuckoo
import Factory
import CoreLocation

@testable import WeatherApp

class WeatherViewModelTests: XCTestCase {
    var mockWeatherInfoRepo: MockWeatherInformationRepository!
    var viewModel: WeatherViewModel!
    
    override func setUp() {
        super.setUp()
        mockWeatherInfoRepo = MockWeatherInformationRepository()
        
        let _ = Container.shared.weatherInformationRepositoy.register {
            self.mockWeatherInfoRepo
        }
        
        viewModel = WeatherViewModel()
    }
    
    override func tearDown() {
        mockWeatherInfoRepo = nil
        viewModel = nil
        super.tearDown()
    }
    
    func testFetchCurrentWeatherSuccess() async {
        let userLocation = CLLocation(latitude: 35.0, longitude: 139.0)
        let mockWeatherDTO = CurrentWeatherDTO(weatherDesc: "clear sky", currentTemp: 30.0, minTemp: 25.0, maxTemp: 35.0)
        
        stub(mockWeatherInfoRepo) { stub in
            when(stub.getCurrentWeather(lat: any(), lon: any())).thenReturn(mockWeatherDTO)
        }
        
        await viewModel.fetchCurrentWeather(userLocation: userLocation)
        
        await MainActor.run {
            verify(mockWeatherInfoRepo).getCurrentWeather(lat: 35.0, lon: 139.0)
            XCTAssertEqual("SUNNY", viewModel.weatherDescription)
            XCTAssertEqual(String(format: "%.1f\u{00B0}", 30.0), viewModel.weatherCurrentTemp)
            XCTAssertEqual(String(format: "%.1f\u{00B0}", 25.0), viewModel.weatherMinTemp)
            XCTAssertEqual(String(format: "%.1f\u{00B0}", 35.0), viewModel.weatherMaxTemp)
            XCTAssertEqual("forest_sunny", viewModel.backgroundImage)
            XCTAssertFalse(viewModel.showLoading)
        }
    }
    
    func testFetchCurrentWeatherError() async {
        let userLocation = CLLocation(latitude: 35.0, longitude: 139.0)
        
        stub(mockWeatherInfoRepo) { stub in
            when(stub.getCurrentWeather(lat: any(), lon: any())).thenThrow(ServiceError.serverError)
        }
        
        await viewModel.fetchCurrentWeather(userLocation: userLocation)
        
        await MainActor.run {
            verify(mockWeatherInfoRepo).getCurrentWeather(lat: 35.0, lon: 139.0)
            XCTAssertEqual("", viewModel.weatherDescription)
            XCTAssertEqual("", viewModel.weatherCurrentTemp)
            XCTAssertEqual("", viewModel.weatherMinTemp)
            XCTAssertEqual("", viewModel.weatherMaxTemp)
            XCTAssertEqual("", viewModel.backgroundImage)
            XCTAssertFalse(viewModel.showLoading)
            XCTAssertTrue(viewModel.showError)
        }
    }
    
    func testFetchWeatherForecastSuccess() async {
        let userLocation = CLLocation(latitude: 35.0, longitude: 139.0)
        let mockForecastDTO = WeatherForecastDTO(weatherForcasts: [
            DayForecast(date: 1622505600, weatherDescription: "clear sky", currentTemp: 30.0, minTemp: 25.0, maxTemp: 35.0)
        ])
        
        stub(mockWeatherInfoRepo) { stub in
            when(stub.getWeatherForecast(lat: any(), lon: any())).thenReturn(mockForecastDTO)
        }
        
        await viewModel.fetchWeatherForecast(userLocation: userLocation)
        
        await MainActor.run {
            verify(mockWeatherInfoRepo).getWeatherForecast(lat: 35.0, lon: 139.0)
            
            XCTAssertEqual(viewModel.forecastItems.count, 1)
            XCTAssertEqual(viewModel.forecastItems[0].day, DateUtil.getWeekday(unixDate: 1622505600))
            XCTAssertEqual(viewModel.forecastItems[0].icon, "clear")
            XCTAssertEqual(viewModel.forecastItems[0].weatherDesc, "SUNNY")
            XCTAssertEqual(viewModel.forecastItems[0].temp, String(format: "%.1f\u{00B0}", 30.0))
        }
    }
    
    func testViewDidAppearNoLocation() async {
        LocationService.shared.userLocation = nil
        
        await viewModel.viewDidAppear()
        
        verify(mockWeatherInfoRepo, never()).getCurrentWeather(lat: any(), lon: any())
        verify(mockWeatherInfoRepo, never()).getWeatherForecast(lat: any(), lon: any())
        
        XCTAssertFalse(viewModel.showLoading)
        XCTAssertTrue(viewModel.showError)
    }
}
