//
//  ViewController.swift
//  Sample App
//
//  Created by Shahzaib Noor on 26/10/2018.
//  Copyright © 2018 Shahzaib Noor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func messagefield(_ sender: UITextField) {
        
    }
    
    @IBAction func sendMessage(_ sender: UIButton) {
        print("Message sent")
        let alertController = UIAlertController()
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
        self.present(alertController, animated:true)
    }
        
}

