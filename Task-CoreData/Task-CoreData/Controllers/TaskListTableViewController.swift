//
//  TaskListTableViewController.swift
//  Task-CoreData
//
//  Created by Cynthia Nikolai on 4/27/21.
//

import UIKit

class TaskListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        TaskController.sharedInstance.fetchTasks()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskController.sharedInstance.tasks.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath)

        let task = TaskController.sharedInstance.tasks[indexPath.row]
        
        cell.textLabel?.text = task.name

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //IIDOO
         if segue.identifier == "toTaskDetailVC" {
             guard let destinationVC = segue.destination as? TaskDetailViewController,
                   let indexPath = tableView.indexPathForSelectedRow else { return }
             let task = TaskController.sharedInstance.tasks[indexPath.row]
             destinationVC.task = task
         }
    }
}
