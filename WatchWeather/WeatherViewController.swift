//
//  WeatherViewController.swift
//  WatchWeather
//
//  Created by Liudong on 15/9/4.
//  Copyright © 2015年 Liudong. All rights reserved.
//

import UIKit
import WatchWeatherKit

class WeatherViewController: UIViewController {
    
    var day: Day? {
        didSet {
            title = day?.title
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
