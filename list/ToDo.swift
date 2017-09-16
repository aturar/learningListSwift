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
}
