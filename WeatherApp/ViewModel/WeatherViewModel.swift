//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Govender, Kevashan K on 2024/07/15.
//

import Foundation
import Factory
import CoreLocation

class WeatherViewModel: ObservableObject {
    @Injected(\.weatherInformationRepositoy) var weatherInfoRepo: WeatherInformationRepository
    
    @Published var showLoading: Bool = true
    @Published var weatherDescription: String = ""
    @Published var weatherCurrentTemp: String = ""
    @Published var weatherMinTemp: String = ""
    @Published var weatherMaxTemp: String = ""
    @Published var backgroundImage: String = ""
    @Published var forecastItems: [ForecastItem] = [ForecastItem]()
    @Published var showError: Bool = false
    
    private let weatherIconMap: [String: String] = [
        "clear sky": "clear",
        "mist": "rain",
        "snow": "rain",
        "thunderstorm": "rain",
        "rain": "rain",
        "shower rain": "rain",
        "broken clouds": "partlysunny",
        "scattered clouds": "partlysunny",
        "few clouds": "partlysunny"
    ]
    
    private let weatherDescriptionMap: [String: String] = [
        "clear sky": "SUNNY",
        "mist": "MISTY",
        "snow": "SNOW",
        "thunderstorm": "THUNDERSTORM",
        "rain": "RAIN",
        "shower rain": "RAIN SHOWERS",
        "broken clouds": "BROKEN CLOUDS",
        "scattered clouds": "SCATTERED CLOUDS",
        "few clouds": "PARTLY SUNNY"
    ]
    
    private let backgroundImageMap: [String: String] = [
        "clear sky": "forest_sunny",
        "mist": "forest_rainy",
        "snow": "forest_rainy",
        "thunderstorm": "forest_rainy",
        "rain": "forest_rainy",
        "shower rain": "forest_rainy",
        "broken clouds": "forest_cloudy",
        "scattered clouds": "forest_cloudy",
        "few clouds": "forest_cloudy"
    ]
    
    
    
    func viewDidAppear() async {
        guard let userLocation = LocationService.shared.userLocation else {
            showError.toggle()
            return
        }
        
        await MainActor.run {
            showError = false 
        }
        await fetchCurrentWeather(userLocation: userLocation)
        await fetchWeatherForecast(userLocation: userLocation)
        
    }
    
    func fetchCurrentWeather(userLocation: CLLocation) async {
        do {
            let weatherDto = try await weatherInfoRepo.getCurrentWeather(lat: userLocation.coordinate.latitude,
                                                                         lon: userLocation.coordinate.longitude)
            await MainActor.run {
                weatherDescription = weatherDescriptionMap[weatherDto.weatherDesc] ?? "SUNNY"
                backgroundImage = backgroundImageMap[weatherDto.weatherDesc] ?? "forest_sunny"
                weatherCurrentTemp = String(format: "%.1f\u{00B0}", weatherDto.currentTemp)
                weatherMaxTemp = String(format: "%.1f\u{00B0}", weatherDto.maxTemp)
                weatherMinTemp = String(format: "%.1f\u{00B0}", weatherDto.minTemp)
                showLoading.toggle()
            }
        } catch {
            await MainActor.run {
                showError.toggle()
            }
        }
    }
    
    func fetchWeatherForecast(userLocation: CLLocation) async {
        do {
            let weatherForecastDto = try await weatherInfoRepo.getWeatherForecast(lat: userLocation.coordinate.latitude,
                                                                              lon: userLocation.coordinate.longitude)
            await MainActor.run {
                forecastItems.removeAll()
                for weatherForcast in weatherForecastDto.weatherForcasts {
                    let forecastItem = ForecastItem(day: DateUtil.getWeekday(unixDate: weatherForcast.date),
                                                    icon: weatherIconMap[weatherForcast.weatherDescription] ?? "clear",
                                                    weatherDesc:  weatherDescriptionMap[weatherForcast.weatherDescription] ?? "SUNNY",
                                                    temp: String(format: "%.1f\u{00B0}", weatherForcast.currentTemp))
                    forecastItems.append(forecastItem)
                }
            }
        } catch {
            await MainActor.run {
                showError.toggle()
            }
        }
    }

}

extension Container {
    var weatherViewModel: Factory<WeatherViewModel> {
        Factory(self) {
            WeatherViewModel()
        }
    }
}

struct ForecastItem: Identifiable {
    var id = UUID()
    var day: String
    var icon: String
    var weatherDesc: String
    var temp: String
}
