//
//  DeveloperViewController.swift
//  Solar Journey
//
//  Created by Mikhail Bukhrashvili on 16.04.2021.
//

import UIKit

class DeveloperViewController: UIViewController {
    
    @IBOutlet weak var d0bssonsImageView: UIImageView! {
        didSet {
            d0bssonsImageView.layer.cornerRadius = d0bssonsImageView.frame.height / 2
        }
    }
    
    @IBOutlet weak var mishabuxImageView: UIImageView! {
        didSet {
            mishabuxImageView.layer.cornerRadius = mishabuxImageView.frame.height / 2
        }
    }
    
    @IBOutlet weak var balooouImageView: UIImageView! {
        didSet {
            balooouImageView.layer.cornerRadius = balooouImageView.frame.height / 2
        }
    }
    
    @IBOutlet weak var abImageView: UIImageView! {
        didSet {
            abImageView.layer.cornerRadius = abImageView.frame.height / 2
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.navigationItem.title = ""
    }

}


