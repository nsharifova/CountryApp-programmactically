//
//  CountryData.swift
//  CountryApp-Pr
//
//  Created by Nurluay Sharifova on 28.09.24.
//

import Foundation
protocol JsonData: Codable {}


struct CountryData : JsonData {
    var name : String
    var image : String
    var city : [CityData]
    
}
struct CityData : JsonData {
    var name : String
    var image : String
    var description : String
}
