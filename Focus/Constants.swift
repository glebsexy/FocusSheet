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
    var data: [FocusItem] = [TaskItem(name: "Some text wow", done: false),
                             TaskItem(name: "Some other text", done: false),
                             ChallengeItem(name: "Some text wow", done: false, currentDay: 1),
                             ChallengeItem(name: "Some text wow", done: false, currentDay: 2)
    
    ]
}
