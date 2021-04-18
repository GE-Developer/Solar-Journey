//
//  LoginViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IB Outlets
    @IBOutlet var weightQuestionLabel: UILabel!
    @IBOutlet var introLabel: UILabel!
    
    @IBOutlet var continueButton: UIButton!
    
    @IBOutlet weak var weightTF: UITextField!
    
    // MARK: - Public Properties
    var rusLanguage: Bool!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = rusLanguage ? "Путешествие" : "Travel"
        continueButton.layer.cornerRadius = 12
        changeLanguage()
        weightTF.delegate = self 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        tabBarController.navigationItem.title = rusLanguage ? "Планеты" : "Planets"
        guard let viewControllers = tabBarController.viewControllers else { return }
        viewControllers.first?.tabBarItem.title = rusLanguage ? "Планеты" : "Planets"
        viewControllers.last?.tabBarItem.title = rusLanguage ? "Разработчики" : "Developers"
        
        if let planetsListVC = viewControllers.first as? PlanetsListTableViewController {
            planetsListVC.rusLanguage = rusLanguage
            planetsListVC.weightTF = weightTF.text
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        textFieldMaxLength(textField: textField, maxLength: 2)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    
    
    // MARK: - Private Methods
    
    private func textFieldMaxLength(textField: UITextField!, maxLength: Int) {
        if (textField.text!.count > maxLength) {
            textField.deleteBackward()
        }
    }
 
    private func changeLanguage() {
        if rusLanguage {
            introLabel.text = "Посетим другие планеты и узнаем Ваш вес на них?"
            weightQuestionLabel.text = "Сколько Вы весите на Земле?"
            continueButton.setTitle("Далее", for: .normal)
        }
    }
    
   
    
}




