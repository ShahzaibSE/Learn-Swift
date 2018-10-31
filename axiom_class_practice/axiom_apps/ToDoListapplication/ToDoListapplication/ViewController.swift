//
//  ViewController.swift
//  ToDoListapplication
//
//  Created by Danish Rehman on 28/10/2018.
//  Copyright © 2018 Danish Rehman. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var todoTable: UITableView!
    
    var todoList = ["Task1","Task2","Task3","Task4","Task5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoTable.delegate = self
        todoTable.dataSource = self
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        cell.detailTextLabel?.text = todoList[indexPath.row]
       

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    


}

