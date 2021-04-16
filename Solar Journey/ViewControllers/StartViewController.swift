//
//  StartViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class StartViewController: UIViewController {

    var engLanguage: Bool!
    
    @IBOutlet var englishButton: UIButton!
    @IBOutlet var russianButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func englishButtonPressed() {
        englishButton.alpha = 1
        russianButton.alpha = 0.4
        engLanguage = false
        performSegue(withIdentifier: "showLoginView", sender: nil)
    }
    
    @IBAction func russianButtonPressed() {
        englishButton.alpha = 0.4
        russianButton.alpha = 1
        engLanguage = true
        performSegue(withIdentifier: "showLoginView", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        loginVC.engLanguage = engLanguage
    }
    
}


