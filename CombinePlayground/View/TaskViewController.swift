//
//  TaskViewController.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import UIKit
import Combine

class TaskViewController: UIViewController {
    // Use viewmodel to populate table
    let taskViewModel = TaskListModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    var subscriptions = Set<AnyCancellable>()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        taskViewModel.tasks.sink { [unowned self] _ in
            self.tableView.reloadData()
        }.store(in: &subscriptions)
    }
    
    @IBSegueAction func addNewViewIsGoingToAppear(_ coder: NSCoder) -> AddNewTaskViewController? {
        let controller = AddNewTaskViewController(coder: coder)
        controller?.taskListModel = taskViewModel
        return controller
    }
}

extension TaskViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskViewModel.tasks.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = taskViewModel.tasks.value[indexPath.row]
        
        return cell
    }
}
