//
//  FocusItem.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 24/01/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Foundation

protocol FocusItem {
    
    var name: String { get set }
    var isDone: Bool { get set }
//    var notes: String { get set }
    
    var dateAdded: Date { get set }
    var dateComplete: Date? { get set }
    
}
