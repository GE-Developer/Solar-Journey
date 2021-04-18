//
//  DetailViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var planetImageView: UIImageView!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var myWeightButton: UIButton!
    
    // MARK: - Public Outlets
    var planet: Planet!
    var rusLanguage: Bool!
    var weightTF: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        myWeightButton.layer.cornerRadius = 12
        showTextWithLanguage()
    }
    
    override func viewWillLayoutSubviews() {
        planetImageView.layer.cornerRadius = planetImageView.frame.height / 2
        planetImageView.image = UIImage(named: planet.planetEng)
    }
    
    // MARK: - IB Actions
    @IBAction func myWeightButtonPressed() {
        guard let weightTF = Double(weightTF) else { return }
        let weight = lround(weightTF / 9.8 * planet.g)
        
        if rusLanguage {
            showAlert(with: "", "Понятно", and: "Ваш вес на планете \(planet.planetRus): \(weight) кг.")
        } else {
            showAlert(with: "", "Got it", and: "Your weight on \(planet.planetEng) is: \(weight) kg.")
        }
    }
    
}


// MARK: - Extensions

// MARK: Alert Controller
extension DetailViewController {
    private func showAlert(with title: String, _ okTitle: String, and message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: okTitle, style:.default)
        
        alert.addAction(alertOK)
        present(alert, animated: true)
        }
}

// MARK: Work with text
extension DetailViewController {
    private func showTextWithLanguage() {
        if rusLanguage {
            navigationItem.title = planet.planetRus
            detailLabel.text = """
                           Радиус орбиты: \(planet.orbitRadius) млн. км.
                           Дней в году: \(planet.daysInYear)
                           Радиус: \(planet.raduis) кг.
                           Масса: \(planet.mass) x 10²³ кг.
                           Часов в сутках: \(planet.hoursInDay)
                           g: \(planet.g) м/с²
                           Температура: \(planet.temperature) °C
                           """
            myWeightButton.setTitle("Мой вес", for: .normal)
        } else {
            navigationItem.title = planet.planetEng
            detailLabel.text = """
                           Orbital radius: \(planet.orbitRadius) mln. km.
                           Days in year: \(planet.daysInYear)
                           Radius: \(planet.raduis) km.
                           Mass: \(planet.mass) x 10²³ kg.
                           Hours in day: \(planet.hoursInDay)
                           g: \(planet.g) m/s²
                           Temperature: \(planet.temperature) °C
                           """
            myWeightButton.setTitle("My weight", for: .normal)
        }
    }
}


