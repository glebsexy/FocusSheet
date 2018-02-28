//
//  MyData.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 28/02/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Foundation

struct MyData {
    var data: [FocusItem] = [TaskItem(name: "Some text wow", done: false),
                             TaskItem(name: "Some other text", done: false),
                             ChallengeItem(name: "Some text wow", done: false, currentDay: 1),
                             ChallengeItem(name: "Some text wow", done: false, currentDay: 2)
        
    ]
}
