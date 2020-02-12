//
//  WeatherRepository.swift
//  learing
//
//  Created by Juan Pablo Rodriguez on 11/02/20.
//  Copyright © 2020 Sergio Bernal Reyes. All rights reserved.
//

import Foundation

protocol WeatherRepository {
    func getWeatherToday(location: String)
    func getWeatherNextDay(location: String)
}


