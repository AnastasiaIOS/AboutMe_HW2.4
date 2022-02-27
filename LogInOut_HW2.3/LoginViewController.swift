//
//  ViewController.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 20.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "user"
    private let password = "12345"
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    
    @IBAction func loginButton() {
        
        if userNameTF.text != user || passwordTF.text != password {
            
            let alert = UIAlertController(title: "Attention!", message: "User name or password is not correct", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) {_ in
                self.passwordTF.text = ""
            }
            alert.addAction(action)
            
            /*if passwordTF.text != password {
                passwordTF.text = ""
            }*/
        }
        
        
    }
    
    // Инф сообщение о логине
    @IBAction func showAlertAboutUsername() {
        
        let alertUN = UIAlertController(title: "Oooops!",
                                        message: "Username = user",
                                        preferredStyle: .alert)
        alertUN.addAction(UIAlertAction(title: "OK", style: .default) { action in
            // обработка нажатия кнопки
        })
        self.present(alertUN, animated: true)
    }
    
    //Инф сообщение о пароле
    @IBAction func showAlertAboutPassword() {
        
        let alertPassword = UIAlertController(title: "Yhoho!",
                                              message: "Password = 12345",
                                              preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title: "OK", style: .default) { action in
            // обработка нажатия кнопки
        })
        self.present(alertPassword, animated: true)
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
    
    private func alertMax() {
        
        var allert = UIAlertController(title: String?, message: String?, preferredStyle: .alert)
        var action = UIAlertAction(title: "OK", style: .default) {_ in
            self.passwordTF.text = ""
        }
        allert.addAction(action)
    }
}





