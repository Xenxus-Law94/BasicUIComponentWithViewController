//
//  RegisterViewController.swift
//  Assignment1
//
//  Created by tunlukhant on 7/30/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    static let identifier = "RegisterViewController"
    
    @IBOutlet weak var lblDOB: UILabel!
    
    @IBOutlet weak var lblGender: UILabel!
    
    var dob: String = ""
    
    var gender: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lblDOB.text = dob
        
        switch gender {
        case 0:
            lblGender.text = "Male"
            break
        case 1:
            lblGender.text = "Female"
            break
        default:
            break
        }
    
    }
    
}
