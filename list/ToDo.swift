//
//  ToDo.swift
//  list
//
//  Created by Ayat Turar on 2017-09-15.
//  Copyright © 2017 Ayat Turar. All rights reserved.
//

import Foundation

class ToDo: NSObject {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    init(title: String, isComplete: Bool, dueDate: Date, notes: String?) {
        guard !title.isEmpty else {
            fatalError("Reminder requires a non-empty title")
        }
        self.title = title
        self.isComplete = isComplete
        self.dueDate = dueDate
        self.notes = notes;
    }
    
    static func loadToDos() -> [ToDo]?  {
        return nil
    }
    
    static func loadSampleTodos() -> [ToDo] {
        let todo1 = ToDo(title: "ToDo One", isComplete: false,
                         dueDate: Date(), notes: "Notes 1")
        let todo2 = ToDo(title: "ToDo Two", isComplete: false,
                         dueDate: Date(), notes: "Notes 2")
        let todo3 = ToDo(title: "ToDo Three", isComplete: false,
                         dueDate: Date(), notes: "Notes 3")
        return [todo1, todo2, todo3]
    }
    
    
}
