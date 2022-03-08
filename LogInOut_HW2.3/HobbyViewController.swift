//
//  HobbyViewController.swift
//  LogInOut_HW2.3
//
//  Created by Anastasia on 08.03.2022.
//

import UIKit

class HobbyViewController: UIViewController {
    
    
    @IBOutlet var nameOfHobbyLabel: UILabel!
    
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameOfHobbyLabel.text = "\(hobby)"
        
    }
    

    

}
