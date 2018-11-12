//
//  addTodoViewController.swift
//  todo-app
//
//  Created by Shahzaib Noor on 05/11/2018.
//  Copyright © 2018 Shahzaib Noor. All rights reserved.
//

import UIKit

class addTodoViewController: UIViewController {

    @IBOutlet weak var todoname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Add view loaded")
    }
    
    @IBAction func addToDo(_ sender: Any) {
        if todoname.text! == "" {
            print("Please enter a to-do")
            let alertBox = UIAlertController(title: "Please enter a To-do", message: "It is mandatory to enter a To-do", preferredStyle: .alert)
            alertBox.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alertBox.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            self.present(alertBox, animated: true)
        } else  {
            print("Added to-do: \(todoname.text!)")
            tasksArray.append(todoname.text!)
            self.dismiss(animated: true, completion: nil)
        }
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
