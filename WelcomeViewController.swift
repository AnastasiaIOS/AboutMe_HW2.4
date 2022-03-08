//
//  WelcomeViewController.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 22.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var labelForWelcome: UILabel!
    var user = ""
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelForWelcome.text = "Welcome, \(name)!"
    }
    
    
 // Кнопка LOGOUT
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
        
    }
    
}
