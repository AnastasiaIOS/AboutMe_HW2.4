//
//  AboutMeViewController.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 06.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var aboutMeLabel: UILabel!
    
    var defenition = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       aboutMeLabel.text = "\(defenition)"
    }
    
    /*// MARK: Navigation
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        
        guard let hobbyVC = segue.destination as? HobbyViewController else { return }
            hobbyVC.hobby = Person.getPerson().hobby
        }*/
        
        
    }
        

  
    


