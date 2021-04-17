//
//  Planets.swift
//  Solar Journey
//
//  Created by Bulat Kamalov on 16.04.2021.
//
import Foundation

struct Planet {
    let planetEng: String
    let planetRus: String
    let orbitRadius: Int
    let daysInYear: Int
    let raduis: Double
    let mass: Double
    let hoursInDay: Double
    let g: Double
    let temperature: Int
}

extension Planet {
    
    static func getPlanetList() -> [Planet] {
        
        var planets: [Planet] = []
        
        let planetsEng = InfoManager.shared.planetsEng
        let planetsRus = InfoManager.shared.planetsRus
        let orbitRadiuses = InfoManager.shared.orbitRadiuses
        let daysInYear = InfoManager.shared.daysInYear
        let raduises = InfoManager.shared.raduises
        let masses = InfoManager.shared.masses
        let hoursInDay = InfoManager.shared.hoursInDay
        let g = InfoManager.shared.g
        let temperatures = InfoManager.shared.temperatures
        
        for index in 0 ..< planetsEng.count {
            
            let planet = Planet(planetEng: planetsEng[index],
                                planetRus: planetsRus[index],
                                orbitRadius: orbitRadiuses[index],
                                daysInYear: daysInYear[index],
                                raduis: raduises[index],
                                mass: masses[index],
                                hoursInDay: hoursInDay[index],
                                g: g[index],
                                temperature: temperatures[index])
            planets.append(planet)
        }
        return planets
    }
}

