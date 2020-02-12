//
//  WeatherService.swift
//  learing
//
//  Created by Juan Pablo Rodriguez on 11/02/20.
//  Copyright © 2020 Sergio Bernal Reyes. All rights reserved.
//

import Foundation

class WeatherService : WeatherRepository {
    func getWeatherToday(location: String) {
        Networking.shared.perfomRequest(url: <#T##URLConvertible#>, method: <#T##HTTPMethod#>, params: <#T##[String : Any]#>, headers: <#T##HTTPHeaders#>) { (<#Result<T, Error>#>) in
            <#code#>
        }
    }
    
    func getWeatherNextDay(location: String) {
        <#code#>
    }
    
}
