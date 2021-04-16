//
//  PlanetsListTableViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class PlanetsListTableViewController: UITableViewController {

    var rusLanguage: Bool!
    let planets = Planet.getPlanetList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planet", for: indexPath)
        let planet = planets[indexPath.row]
        
        
        var content = cell.defaultContentConfiguration()
        
        if rusLanguage {
            content.text = planet.planetRus
        } else {
            content.text = planet.planetEng
        }
        
        
        content.image = UIImage(named: planet.planetEng)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
}
