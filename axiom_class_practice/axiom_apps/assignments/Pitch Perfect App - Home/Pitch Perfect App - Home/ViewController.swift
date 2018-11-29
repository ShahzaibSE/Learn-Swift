//
//  ViewController.swift
//  Pitch Perfect App - Home
//
//  Created by Shahzaib Noor on 26/11/2018.
//  Copyright © 2018 Shahzaib Noor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func stopRecording(_ sender: Any) {
        performSegue(withIdentifier: "playsounds", sender: nil)
    }
    
}

