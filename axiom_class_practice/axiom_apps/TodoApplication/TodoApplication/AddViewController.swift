//
//  AddViewController.swift
//  TodoApplication
//
//  Created by Danish Rehman on 04/11/2018.
//  Copyright © 2018 Danish Rehman. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    
    
    @IBOutlet weak var taskText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addBtn(_ sender: Any) {
        
        taskArray.append(taskText.text!)
        self.dismiss(animated: true, completion: nil)
        
    }
    


}
