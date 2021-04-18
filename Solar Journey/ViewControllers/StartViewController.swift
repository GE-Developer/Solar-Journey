//
//  StartViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class StartViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var englishButton: UIButton!
    @IBOutlet var russianButton: UIButton!
    
    // MARK: - Private Properties
    private var rusLanguage: Bool!
    
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        loginVC.rusLanguage = rusLanguage
    }
    
    // MARK: - IB Actions
    @IBAction func englishButtonPressed() {
        navigationItem.title = "Menu"
        englishButton.alpha = 1
        russianButton.alpha = 0.4
        rusLanguage = false
        performSegue(withIdentifier: "showLoginView", sender: nil)
    }
    
    @IBAction func russianButtonPressed() {
        navigationItem.title = "Меню"
        englishButton.alpha = 0.4
        russianButton.alpha = 1
        rusLanguage = true
        performSegue(withIdentifier: "showLoginView", sender: nil)
    }
    
}


