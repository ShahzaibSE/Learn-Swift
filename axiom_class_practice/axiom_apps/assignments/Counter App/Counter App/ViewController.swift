//
//  ViewController.swift
//  Counter App
//
//  Created by Shahzaib Noor on 30/10/2018.
//  Copyright © 2018 Shahzaib Noor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var count: UILabel!
    var countVal: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        count.text = "\(countVal)"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func reset(_ sender: Any) {
        countVal = 0
        count.text = "\(countVal)"
    }
    
    @IBAction func Increase(_ sender: Any) {
        countVal += 1
        count.text = "\(countVal)"
//        print(self.count)
    }
    
    @IBAction func Decreament(_ sender: Any) {
        countVal -= 1
        count.text = "\(countVal)"
        // If count value is going to be less than 0
        if countVal < 0 {
            countVal = 0
            count.text = "\(countVal)"
        }

    }
}

