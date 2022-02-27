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
    
    
    
 // Кнопка LOGOUT
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
        
    }
    
}
