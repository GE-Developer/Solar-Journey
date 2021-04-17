//
//  DeveloperViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class DeveloperViewController: UIViewController {
    
    @IBOutlet weak var d0bssonImageView: UIImageView!
    @IBOutlet weak var mishabuxImageView: UIImageView!
    @IBOutlet weak var balooouImageView: UIImageView!
    @IBOutlet weak var abImageView: UIImageView!
    
    @IBOutlet weak var d0bssonLabel: UILabel!
    @IBOutlet weak var mishabuxLabel: UILabel!
    @IBOutlet weak var balooouLabel: UILabel!
    @IBOutlet weak var abLabel: UILabel!
    
    var person1: InfoManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeImages()
        d0bssonLabel.text = InfoManager.shared.nickNames[0]
        mishabuxLabel.text = InfoManager.shared.nickNames[1]
        balooouLabel.text = InfoManager.shared.nickNames[2]
        abLabel.text = InfoManager.shared.nickNames[3]
    }

}

extension DeveloperViewController {
    
    private func customizeImages() {
        d0bssonImageView.layer.cornerRadius = d0bssonImageView.frame.height / 2
        d0bssonImageView.layer.borderWidth = 3
        d0bssonImageView.layer.borderColor = #colorLiteral(red: 0.8717630506, green: 0.8421882391, blue: 0.8511785865, alpha: 1).cgColor
        
        mishabuxImageView.layer.cornerRadius = mishabuxImageView.frame.height / 2
        mishabuxImageView.layer.borderWidth = 3
        mishabuxImageView.layer.borderColor = #colorLiteral(red: 0.239659816, green: 0.1573258936, blue: 0.08201587945, alpha: 1).cgColor
        
        balooouImageView.layer.cornerRadius = balooouImageView.frame.height / 2
        balooouImageView.layer.borderWidth = 3
        balooouImageView.layer.borderColor = #colorLiteral(red: 0.4236012697, green: 0.3502246737, blue: 0.183791399, alpha: 1).cgColor
        
        abImageView.layer.cornerRadius = abImageView.frame.height / 2
        abImageView.layer.borderWidth = 3
        abImageView.layer.borderColor = #colorLiteral(red: 0.08562392741, green: 0.3184583485, blue: 0.3752470613, alpha: 1).cgColor
    }
}

