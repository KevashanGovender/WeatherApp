//
//  DateUtil.swift
//  WeatherApp
//
//  Created by Govender, Kevashan K on 2024/07/14.
//

import Foundation

struct DateUtil {
    static func getWeekday(unixDate: Int) -> String{
        let timeInterval = TimeInterval(unixDate)
        let date = Date(timeIntervalSince1970: timeInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: date)
        
    }
}
