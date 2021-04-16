//
//  PlanetsListTableViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class PlanetsListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8 // хард)//
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planet", for: indexPath)
        //
        var content = cell.defaultContentConfiguration()
        //
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
}
