//
//  TaskListModel.swift
//  CombinePlayground
//
//  Created by Çağrı Tuğberk Masat on 24.05.2023.
//

import Foundation
import Combine

class TaskListModel {
    
    let tasks = CurrentValueSubject<[String], Never>(["buy milk"])
    
    var addNewTask = PassthroughSubject<String, Never>()
    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        addNewTask
            .filter({$0.count > 3})
            .sink { _ in
            } receiveValue: { [unowned self] newTask in
                self.tasks.send(self.tasks.value + [newTask])
            }.store(in: &subscriptions)
    }
}
