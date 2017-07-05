//
//  TableViewController.swift
//  LeHongPhong_14110409_bai3
//
//  Created by PhongLe on 7/5/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var tasks = [TaskModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tasks.append(TaskModel(title: "task 1", priority: .type1))
        tasks.append(TaskModel(title: "task 2", priority: .type1))
        tasks.append(TaskModel(title: "task 3", priority: .type2))
        tasks.append(TaskModel(title: "task 4", priority: .type2))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 2
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row].title
        cell.detailTextLabel?.text = tasks[indexPath.row].priority.rawValue
        return cell
    }

}
