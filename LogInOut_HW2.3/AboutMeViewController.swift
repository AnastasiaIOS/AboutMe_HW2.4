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
    
    let phone = Contacts.getContacts().phone
    let email = Contacts.getContacts().email
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeLabel.text = "\(defenition)"
        hobbyLabel.text = "Мое хобби - \(hobby).Нажми кнопку 'ХОББИ' "
    }
    
    // MARK: Navigation
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        
        guard let contactsVC = segue.destination as? ContactsViewController else { return }
        contactsVC.email = email
        contactsVC.phone = phone
    }
}

    
    

        

  
    


