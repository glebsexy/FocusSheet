//
//  TaskItem.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 27/02/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Foundation

struct TaskItem: FocusItem {
    
    var name: String
    var isDone: Bool
    var dateAdded: Date
    var dateComplete: Date?
    
    var isPriority: Bool
    
    init(name: String = "Default task name", done: Bool = false, priority: Bool = false, dateAdded: Date = Date(timeIntervalSince1970: (365*48+60)*24*60*60*60), dateComplete: Date? = nil) {
        
        assert(!done && dateComplete == nil)
        
        self.name = name
        self.isDone = done
        self.isPriority = priority
        self.dateAdded = dateAdded
        self.dateComplete = dateComplete
    }

}
