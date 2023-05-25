//
//  FormTypeViewController.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import UIKit

class FormTypeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addNewRecordButtonTapped(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "AddFormViewController") as? AddFormViewController else { return }
        
        self.present(vc, animated: true, completion: nil)
    }
    
}

// subscriber will be added here !! 
