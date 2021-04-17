//
//  PlanetsListTableViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class PlanetsListTableViewController: UITableViewController {
    
    // MARK: - Public Properties
    var rusLanguage: Bool!
    
    // MARK: - Private Properties
    private let planets = Planet.getPlanetList()
    
    // MARK: - Override Methods
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
        content.textProperties.color = .white
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.planet = planets[indexPath.row]
            detailVC.rusLanguage = rusLanguage
        }
    }
    
}
