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
     let user = "user"
     let password = "12345"
    
// MARK: - NAVIGATIONS
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
  //      welcomeVC.user = user
 //   }
    
    
    // MARK: Navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let tabBarController = segue.destination as! UITabBarController
            ...
             for viewController in viewControllers {
                if let welcomeVC = viewController as? WelcomeViewController {
                    
                }
            }
            ...
        }
    
    @IBAction func loginButton() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(title: "Attention!", message: "User name or password is not correct")
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





