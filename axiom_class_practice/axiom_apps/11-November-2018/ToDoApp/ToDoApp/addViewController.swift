//
//  addViewController.swift
//  ToDoApp
//
//  Created by Danish Rehman on 11/11/2018.
//  Copyright © 2018 Danish Rehman. All rights reserved.
//

import UIKit

protocol protocol1 {
    func sendData(taskName:String)
}

class addViewController: UIViewController {

    @IBOutlet weak var taskOutlet: UITextField!
    
    var delegate:protocol1?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addBtn(_ sender: Any) {
        
        
        delegate?.sendData(taskName: taskOutlet.text!)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    

}
