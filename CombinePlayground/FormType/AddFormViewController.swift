//
//  AddFormViewController.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import UIKit

class AddFormViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        self.dismiss(animated: true) {
            //NEED TO SEND DATA TO SUBSCRIBER
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

