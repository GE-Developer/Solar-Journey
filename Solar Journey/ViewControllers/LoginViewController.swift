//
//  LoginViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    var rusLanguage: Bool!
    
    @IBOutlet var weightQuestionLabel: UILabel!
    @IBOutlet var introLabel: UILabel!
    @IBOutlet var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.layer.cornerRadius = 12
        changeLanguage()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        
            if let planetsListVC = viewControllers.first as? PlanetsListTableViewController {
                planetsListVC.rusLanguage = rusLanguage
            }
            
        
        
            
        
    }
    
    private func changeLanguage() {
        if rusLanguage {
            introLabel.text = "Посетим другие планеты и узнаем Ваш вес на них?"
            weightQuestionLabel.text = "Сколько Вы весите на Земле?"
        }
    }
    
}


