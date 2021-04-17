//
//  DetailViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var planetImageView: UIImageView!
    @IBOutlet var detailLabel: UILabel!
    
    var planet: Planet!
    var rusLanguage: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planetImageView.layer.cornerRadius = planetImageView.frame.height / 2
        planetImageView.image = UIImage(named: planet.planetEng)
        
        if rusLanguage {
            detailLabel.text = """
                           Радиус орбиты: \(planet.orbitRadius) млн. км.
                           Дней в году: \(planet.daysInYear)
                           Радиус: \(planet.raduis) кг.
                           Масса: \(planet.mass) x 10²³ кг.
                           Часов в сутках: \(planet.hoursInDay)
                           g: \(planet.g) м/с²
                           Температура: \(planet.temperature) °C
                           """
        } else {
            detailLabel.text = """
                           Orbital radius: \(planet.orbitRadius) mln. km.
                           Days in year: \(planet.daysInYear)
                           Radius: \(planet.raduis) km.
                           Mass: \(planet.mass) x 10²³ kg.
                           Hours in day: \(planet.hoursInDay)
                           g: \(planet.g) m/s²
                           Temperature: \(planet.temperature) °C
                           """
        }
    }
    
}
