//
//  AboutMeViewController.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 06.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMeLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    var defenition = ""
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeLabel.text = "\(defenition)"
        hobbyLabel.text = "Мое хобби - \(hobby).Нажми кнопку 'ХОББИ' "
    }
    
    @IBAction func goToHobby() {
    }
    
    
}
        

  
    


