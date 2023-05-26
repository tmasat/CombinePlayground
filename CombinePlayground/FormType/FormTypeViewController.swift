//
//  FormTypeViewController.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import UIKit
import Combine

class FormTypeViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    let addFormViewController = AddFormViewController()
    
    var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addFormViewController.addFormData
            .sink { _ in
            } receiveValue: { [unowned self] formData in
                print(formData)
            }.store(in: &subscriptions)
        
    }
    
    @IBAction func addNewRecordButtonTapped(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "AddFormViewController") as? AddFormViewController else { return }
        
        self.present(vc, animated: true, completion: nil)
    }
    
}

/*
 
 .sink { _ in
 } receiveValue: { [unowned self] newTask in
 self.tasks.send(self.tasks.value + [newTask])
 }.store(in: &subscriptions)
 */

