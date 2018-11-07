//
//  ViewController.swift
//  TodoApplication
//
//  Created by Danish Rehman on 04/11/2018.
//  Copyright © 2018 Danish Rehman. All rights reserved.
//

import UIKit

 var taskArray:Array = Array<String>()

class ViewController: UIViewController {


    @IBOutlet weak var taskTable: UITableView!
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("View controller is loaded")
        taskTable.delegate = self
        taskTable.dataSource = self
    }
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        taskTable.reloadData()
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    

    
    
    
    
    
    @IBAction func addBtn(_ sender: Any) {
        print("add btn pressed")
       self.performSegue(withIdentifier: "toAdd", sender: nil)
    }
    
    
   
    
}


extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = taskArray[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(taskArray[indexPath.row])
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            print(taskArray[indexPath.row])
        }
    }
    
}
