//
//  TaskDetailViewController.swift
//  Task-CoreData
//
//  Created by Cynthia Nikolai on 4/27/21.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var taskNotesTextView: UITextView!
    @IBOutlet weak var taskDueDatePicker: UIDatePicker!
        
    var task: Task?
    var date: Date?
    
    // MARK:- Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = taskNameTextField.text, !name.isEmpty,
              let notes = taskNotesTextView.text, !notes.isEmpty,
              let dueDate = taskDueDatePicker?.date else { return }
        if let task = task {
            task.name = name
            task.notes = notes
            task.dueDate = dueDate
            TaskController.sharedInstance.update(task: task, name: name, notes: notes, dueDate: dueDate)
        } else {
            TaskController.sharedInstance.createTaskWith(name: name, notes: notes, dueDate: dueDate)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func dueDatePickerDateChanged(_ sender: UIDatePicker) {
        self.date = taskDueDatePicker?.date ?? Date() 
    }
    
    func updateViews() {
        guard let task = task else { return }
        taskNameTextField.text = task.name
        taskNotesTextView.text = task.notes
        taskDueDatePicker.date = task.dueDate ?? Date()
    }
}
