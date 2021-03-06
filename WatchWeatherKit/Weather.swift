//
//  Weather.swift
//  WatchWeather
//
//  Created by Liudong on 15/9/8.
//  Copyright © 2015年 Liudong. All rights reserved.
//

import Foundation

public struct Weather {
    public enum State: Int {
        case Sunny, Cloudy, Rain, Snow
    }
    
    public let state: State
    public let highTemperature: Int
    public let lowTemperature: Int
    public let day: Day
    
    public init?(json:[String: AnyObject]) {

        guard let stateNumber = json["state"] as? Int,
            state = State(rawValue: stateNumber),
            highTemperature = json["high_temp"] as? Int,
            lowTemperature = json["low_temp"] as? Int,
            dayNumber = json["day"] as? Int,
            day = Day(rawValue: dayNumber) else {
                return nil
        }
        
        self.state = state
        self.highTemperature = highTemperature
        self.lowTemperature = lowTemperature
        self.day = day
        
        
    }
}