//
//  SecondViewController.swift
//  AppDeligate
//
//  Created by Tran Trung Kien Tran on 2019-11-15.
//  Copyright © 2019 KienTran. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myTextBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addTasks(_ sender: UIButton) {
        
        if(myTextBox.text != ""){
            myTask.append(myTextBox.text!)
            myTextBox.text = ""
        }
    }
    
}

