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
        
    // MARK:- Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButton) {
    }
    
    @IBAction func dueDatePickerDateChanged(_ sender: UIDatePicker) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
