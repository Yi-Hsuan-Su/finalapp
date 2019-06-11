//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Stanley on 2017/9/6.
//  Copyright © 2017年 Stanley. All rights reserved.
//

import Foundation

typealias DownloadCompleter = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=d25a2421edc98e4781b66d7f5a60cd74"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=d25a2421edc98e4781b66d7f5a60cd74"



