//
//  ViewController.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 20.02.2022.
//

import UIKit

class ViewController: UIViewController {
   
// MARK: - IB OUTLETS
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
// MARK: - PRIVATE PROPERTIES
    
   
     let user = AppFriend.createApp().login
     let password = AppFriend.createApp().password
     let name = Person.getPerson().name
    
    
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
                
            }
            
        }
        
    }
        
    
    @IBAction func loginButton() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(title: "Attention!", message: "Username or password is not correct")
        }
    }
    
    // Инф сообщение о логине
    @IBAction func showAlertAboutUsername() {
        showAlert(title: "Oooops!", message: "Username = user")
    }
    
    //Инф сообщение о пароле
    @IBAction func showAlertAboutPassword() {
        showAlert(title: "Yhoho!", message: "password = 12345")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        passwordTF.text = ""
        userNameTF.text = ""
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func showAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) {_ in
            self.passwordTF.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
        
    }
}





