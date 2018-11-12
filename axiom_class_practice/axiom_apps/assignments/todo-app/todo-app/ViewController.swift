//
//  ViewController.swift
//  todo-app
//
//  Created by Shahzaib Noor on 05/11/2018.
//  Copyright © 2018 Shahzaib Noor. All rights reserved.
//

import UIKit

var tasksArray: Array<String> = Array<String>()

class ViewController: UIViewController {
    
    @IBOutlet weak var taskTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // ----------- //
        print("List view loaded")
        getData()
        taskTable.dataSource = self
        taskTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        // Use the edit button item provided by the table view controller.
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Use the edit button item provided by the table view controller.
        navigationItem.leftBarButtonItem = editButtonItem
        taskTable.reloadData()
    }

    @IBAction func addView(_ sender: Any) {
        print("Add todo")
        self.performSegue(withIdentifier: "ToAdd", sender: nil)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = tasksArray[indexPath.row]
        cell.detailTextLabel?.text = tasksArray[indexPath.row]
        return cell
    }
    
    func getData() {
        tasksArray.append("Task #1")
        tasksArray.append("Task #2")
        tasksArray.append("Task #3")
//        taskTable = tasksArray
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tasksArray.remove(at: indexPath.row)
            print("Task deleted")
            taskTable.reloadData()
        }
    }
    
    
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        var task = tasksArray[indexPath.count]
//        if task != nil || task != "" {
//            return true
//        } else {
//            return false
//        }
//    }
    
    
}
