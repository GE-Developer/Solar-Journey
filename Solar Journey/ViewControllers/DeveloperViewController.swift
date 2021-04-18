//
//  DeveloperViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class DeveloperViewController: UIViewController {
    
        
    @IBOutlet var photosImageView: [UIImageView]!
    @IBOutlet var nicknameLabels: [UILabel]!
    
    var person: InfoManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeImagesAndLabels()
    }
}

extension DeveloperViewController {
    
    private func customizeImagesAndLabels() {
        
        for (nickname, text) in zip(nicknameLabels, InfoManager.shared.nickNames) {
            nickname.text = text
        }
        
        for photos in photosImageView {
            photos.layer.cornerRadius = photos.frame.height / 2
            photos.layer.borderWidth = 3
            photos.layer.borderColor = #colorLiteral(red: 0.08562392741, green: 0.3184583485, blue: 0.3752470613, alpha: 1).cgColor
        }
        
    }
}

