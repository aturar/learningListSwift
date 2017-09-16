//
//  ToDoTableViewController.swift
//  list
//
//  Created by Ayat Turar on 2017-09-15.
//  Copyright © 2017 Ayat Turar. All rights reserved.
//

import Foundation
import UIKit

class ToDoTableViewController: UITableViewController {
    var todos = [ToDo]()
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        return todos.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
            tableView.dequeueReusableCell(withIdentifier:
                "ToDoCellIdentifier") else {
                    fatalError("Could not dequeue a cell")
        }
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.title
        return cell
    }
    
}
