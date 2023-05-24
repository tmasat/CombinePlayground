//
//  TaskViewController.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import UIKit
import Combine

class TaskViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var subscriptions = Set<AnyCancellable>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        self.tableView.reloadData()
    }
    @IBSegueAction func addNewViewIsGoingToAppear(_ coder: NSCoder) -> AddNewTaskViewController? {
        let controller = AddNewTaskViewController(coder: coder)
        return <#UIViewController(coder: coder)#>
    }
    
}

extension TaskViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = "mock"
        
        return cell
    }
}
