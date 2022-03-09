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
    
    // MARK: Navigation
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
                aboutMeVC.title = name
                aboutMeVC.defenition = defenition
                aboutMeVC.hobby = hobby
                
                
            }
        }
        }
        

    
    
    
    @IBAction func goToHobby() {
    }
    
    
}
        

  
    


