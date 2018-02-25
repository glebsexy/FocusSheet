//
//  Constants.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 23/02/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Cocoa

enum FSColor {
    
    static let priority = NSColor(red: 0.95, green: 0.4, blue: 0.55, alpha: 0.58)
    static let regular = NSColor(red: 0.85, green: 0.90, blue: 1.0, alpha: 0.0)
    static let challenge = NSColor(red: 0.4, green: 0.875, blue: 0.55, alpha: 0.58)
    
    static let selectedCell = NSColor(red: 0.73, green: 0.71, blue: 0.70, alpha: 0.23)
}

struct MyData {
    var data: [TodoListItem] = [TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: true),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Some challenge", done: false, challenge: (day: 1, ofDays: 30)),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Some challenge", done: false, challenge: (day: 2, ofDays: 30)),
                                TodoListItem(name: "Some challenge", done: false, challenge: (day: 3, ofDays: 30)),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Very important", done: false, type: TodoListItemType.priority),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                TodoListItem(name: "Some text wow", done: false),
                                ]
}
