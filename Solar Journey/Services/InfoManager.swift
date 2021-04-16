//
//  InfoManager.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

class InfoManager {
    
    static let shared = InfoManager()
    
    let planetsEng = ["Mercury", "Venus", "Earth", "Mars",
                   "Jupiter", "Saturn", "Uranus", "Neptune"]
    
    let planetsRus = ["Меркурий", "Венера", "Земля", "Марс", "Юпитер",
                   "Сатурн", "Уран", "Нептун"]
    
    let orbitRadiuses = [58, 108, 150, 228, 778, 1429, 2871, 4504] // в миллионах км
    
    let daysInYear = [88, 225, 365, 687, 4380, 10585, 30660, 60225] // дней в году
    
    let raduises = [2.4, 6.1, 6.4, 3.4, 71, 60, 26, 25] // тыс км
    
    let masses = [3.3, 49, 60, 6.4, 19000, 5700, 8700, 1000] // * 10^23 кг
    
    let hoursInDay = [1406.4, 5832, 24, 24.7, 9.84, 10.8, 17.3, 16.1] // земных часов в сутках
    
    let g = [3.7, 8.87, 9.8, 3.7, 24.8, 10.4, 8.87, 10.15] // Ускорение свободного падения
    
    let temperatures = [167, 457, 14, -55, -153, -185, -214, -225] // в цельсиях
    
    private init() {}
}
