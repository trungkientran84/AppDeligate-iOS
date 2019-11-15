//
//  FirstViewController.swift
//  AppDeligate
//
//  Created by Tran Trung Kien Tran on 2019-11-15.
//  Copyright © 2019 KienTran. All rights reserved.
//

import UIKit

var myTask = ["iOS", "Operating Sytem", "XML"]


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (myTask.count)
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "myCell")
        cell.textLabel?.text = myTask[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if(editingStyle == UITableViewCell.EditingStyle.delete){
            myTask.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }

}

