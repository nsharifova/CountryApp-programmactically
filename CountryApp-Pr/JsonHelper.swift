//
//  JsonHelper.swift
//  CountryApp-Pr
//
//  Created by Nurluay Sharifova on 28.09.24.
//

import Foundation

enum JsonFileName: String {
    case countryData = "CountryData"
    case cityData = "CityData"
}

class JsonFileHelper {
    static func jsonParse<T:JsonData> (fileName : JsonFileName,type:T.Type) -> [T]? {
        guard let url = Bundle.main.url(forResource: fileName.rawValue, withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let result = try? JSONDecoder().decode([T].self, from:   data)
        else {
            return nil
        }
        return result
        
    }
}
