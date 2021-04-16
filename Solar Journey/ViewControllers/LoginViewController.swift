//
//  LoginViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    var engLanguage: Bool!
    
    @IBOutlet var weightQuestionLabel: UILabel!
    @IBOutlet var introLabel: UILabel!
    @IBOutlet var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.layer.cornerRadius = 12
        changeLanguage()
    }
    
    private func changeLanguage() {
        if engLanguage {
            introLabel.text = "Посетим другие планеты и узнаем Ваш вес на них?"
            weightQuestionLabel.text = "Сколько Вы весите на Земле?"
        }
    }
    
}
