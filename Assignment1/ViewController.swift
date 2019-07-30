//
//  ViewController.swift
//  Assignment1
//
//  Created by tunlukhant on 7/30/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfDOB: UITextField!
    
    var selectedGender: Int = -1
    
    @IBAction func segcGender(_ sender: UISegmentedControl) {
        selectedGender = sender.selectedSegmentIndex
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: RegisterViewController.identifier) as! RegisterViewController
        vc.dob = tfDOB.text ?? ""
        vc.gender = selectedGender
        self.present(vc, animated: true, completion: nil)
    }
    private var datepicker: UIDatePicker?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datepicker = UIDatePicker()
        datepicker?.datePickerMode = .date
        datepicker?.addTarget(self, action: #selector(self.selectDate(datepicker:)), for: .valueChanged)
        
        tfDOB.inputView = datepicker
    }
    
    @objc func selectDate(datepicker:UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        tfDOB.text = formatter.string(from: datepicker.date)
        view.endEditing(true)
    }


}

