//
//  ViewController.swift
//  WatchWeather
//
//  Created by Liudong on 15/9/4.
//  Copyright © 2015年 Liudong. All rights reserved.
//

import UIKit
import WatchWeatherKit

class ViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        let vc = weatherViewControllerForDay(.Today)
        setViewControllers([vc], direction: .Forward, animated: true, completion: nil)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func weatherViewControllerForDay(day: Day) -> UIViewController {
        let vc = storyboard?.instantiateViewControllerWithIdentifier("WeatherViewController") as! WeatherViewController
        let nav = UINavigationController(rootViewController: vc)
        vc.day = day
        
        return nav
    }


}

extension ViewController: UIPageViewControllerDataSource {
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        guard let nav = viewController as? UINavigationController,
        viewController = nav.viewControllers.first as? WeatherViewController,
            day = viewController.day else {
                return nil
        }
        
        
        if day == .DayBeforeYesterday {
            return nil
        }
        
        guard let earlierDay = Day(rawValue: day.rawValue - 1) else {
            return nil
        }
        
        return self.weatherViewControllerForDay(earlierDay)
        
    }
    
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        guard let nav = viewController as? UINavigationController,
        viewController = nav.viewControllers.first as? WeatherViewController,
            day = viewController.day else {
                return nil
        }
        if day == .DayAfterTomorrow {
            return nil
        }
        
        guard let laterDay = Day(rawValue: day.rawValue + 1) else {
            return nil
        }
        
        return self.weatherViewControllerForDay(laterDay)
        
    }
    
    
    
    
}
