//
//  HomeViewController.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTaskButtonTapped(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "TaskViewController") as? TaskViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func formTypeButtonTapped(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "FormTypeViewController") as? FormTypeViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
