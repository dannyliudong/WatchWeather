//
//  WeatherViewController.swift
//  WatchWeather
//
//  Created by Liudong on 15/9/4.
//  Copyright © 2015年 Liudong. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    
    var day: Day? {
        didSet {
            title = day?.title
        }
    }
    

    
    enum Day: Int {
        case DayBeforeYesterday = -2
        case Yesterday
        case Today
        case Tomorrow
        case DayAfterTomorrow
        
        var title: String {
            let result: String
            switch self {
            case .DayBeforeYesterday:result = "前天"
            case .Yesterday: result = "昨天"
            case .Today: result = "今天"
            case .Tomorrow: result = "明天"
            case .DayAfterTomorrow:result = "后天"
            }
            
            return result
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
