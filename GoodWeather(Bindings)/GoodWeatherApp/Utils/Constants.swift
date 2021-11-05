//
//  Constants.swift
//  GoodWeatherApp
//
//  Created by Julio Ismael Robles on 02/11/2021.
//

import Foundation

struct WeatherAPI {
    
    static let apiKey: String = "18218701a6111c79d09a9cfe8a8d7b89"

}

struct Constants {
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
            
            // get the default settings for temperature
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=\(WeatherAPI.apiKey)&units=\(unit)")!
        }
    }
}
