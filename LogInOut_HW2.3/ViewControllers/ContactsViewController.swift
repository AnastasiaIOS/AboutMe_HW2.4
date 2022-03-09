//
//  ContactsViewController.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 06.03.2022.
//

import UIKit

class ContactsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var phone = ""
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = phone
        emailLabel.text = email

    }
    

   
}
