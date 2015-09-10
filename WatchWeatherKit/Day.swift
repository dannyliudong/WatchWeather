//
//  Day.swift
//  WatchWeather
//
//  Created by Liudong on 15/9/8.
//  Copyright © 2015年 Liudong. All rights reserved.
//


public enum Day: Int {
    case DayBeforeYesterday = -2
    case Yesterday
    case Today
    case Tomorrow
    case DayAfterTomorrow
    
    public var title: String {
        let result: String
        switch self {
        case .DayBeforeYesterday: result = "前天"
        case .Yesterday: result = "昨天"
        case .Today: result = "今天"
        case .Tomorrow: result = "明天"
        case .DayAfterTomorrow: result = "后天"
        }
        return result
    }
}
