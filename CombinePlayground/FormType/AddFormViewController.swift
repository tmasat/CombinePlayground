//
//  AddFormViewController.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import UIKit
import Combine

class AddFormViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    var dataCollection: [String]?
    
    var addFormData = PassthroughSubject<[String], Never>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        self.addFormData.send(["test"])
        self.dismiss(animated: true) {
            self.addFormData.send(["test1", "test2", "test3"])
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

