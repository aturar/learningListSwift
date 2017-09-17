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
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        if let savedToDos = ToDo.loadToDos() {
            todos = savedToDos
        } else {
            todos = ToDo.loadSampleTodos()
        }
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        return todos.count;
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt
        indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit
        editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todos.remove(at: indexPath.row)
            tableView.deleteRows(at: )
        }
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
