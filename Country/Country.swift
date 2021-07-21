//
//  Country.swift
//  Country
//
//  Created by Roman Fedotov on 25.05.2021.
//

import Foundation

class Country {
    var flag: String
    var name: String
    var region: String
    var population: String
    
    init(flag: String, name: String, region: String, population: String) {
        self.flag = flag
        self.name = name
        self.region = region
        self.population = population
    }
}
