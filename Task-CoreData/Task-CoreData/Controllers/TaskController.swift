//
//  TaskController.swift
//  Task-CoreData
//
//  Created by Cynthia Nikolai on 4/27/21.
//

import CoreData

class TaskController {
    
    static var sharedInstance = TaskController()
    
    var tasks:[Task] = []
    
    func createTaskWith(name: String, notes: String?, dueDate: Date?) {
        let newTask = Task.init(name: name, notes: notes, dueDate: dueDate)
        
        CoreDataStack.saveContext()
    }
    
    func fetchTasks() {
        
    }
    
    func update(task: Task, name: String, notes: String?, dueDate: Date?) {
        
    }
    
    func toggleIsComplete(task: Task) {
        
    }

}
