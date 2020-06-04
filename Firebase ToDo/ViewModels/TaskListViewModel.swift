//
//  TaskListViewModel.swift
//  Firebase ToDo
//
//  Created by Miguel Planckensteiner on 19.05.20.
//  Copyright © 2020 Miguel Planckensteiner. All rights reserved.
//

import Foundation
import Combine


class TaskListViewModel: ObservableObject {
    
    @Published var taskCellViewModels = [TaskCellViewModel]()
    @Published var taskRepository = TaskRepository()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        taskRepository.$tasks.map { tasks in
            tasks.map { task in
                TaskCellViewModel(task: task)
            }
        }
        .assign(to: \.taskCellViewModels, on: self)
        .store(in: &cancellables)
    }
    
    func addTask(task: Task) {
        
        taskRepository.addTask(task)
        
//        let taskVM = TaskCellViewModel(task: task)
//        self.taskCellViewModels.append(taskVM)
    }
}
