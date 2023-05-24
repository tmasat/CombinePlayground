//
//  AddNewTaskViewController.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import UIKit
import Combine

class AddNewTaskViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    var taskListModel: TaskListModel?
    
    var text: String = ""
    
    var subscriptions = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.addTarget(self, action: #selector(updateText), for: .editingChanged)

    }
    
    @objc func updateText() {
        self.text = textField.text ?? ""
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        taskListModel?.addNewTask.send(text)
        dismiss()
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss()
    }
    
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    



}
