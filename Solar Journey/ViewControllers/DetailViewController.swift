//
//  DetailViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var planetImageView: UIImageView!
    
    var planet: Planet!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planetImageView.image = UIImage(named: planet.planetEng)
        planetImageView.layer.cornerRadius = planetImageView.frame.height / 2
        
    }

}
