//
//  ViewController.swift
//  ToDoApp
//
//  Created by Danish Rehman on 11/11/2018.
//  Copyright © 2018 Danish Rehman. All rights reserved.
//

import UIKit




class ViewController: UIViewController,protocol1 {
    
    

    @IBOutlet weak var taskTable: UITableView!
    
    var taskArray:Array = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func addBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "toAdd", sender: nil)
    }
    
    
    func sendData(taskName: String) {
        print(taskName)
        taskArray.append(taskName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAdd"{
            let nextControllerClass = segue.destination as! addViewController
            nextControllerClass.delegate = self
        }
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
}

