//
//  ChallengeItem.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 27/02/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Foundation

struct ChallengeItem: FocusItem {
    
    
    var name: String
    var done: Bool
    var dateAdded: Date
    var dateComplete: Date?
    
    var startDate: Date
    var days: Int
    var currentDay: Int
//    var period: Int
    
    init(name: String = "Default challenge name", done: Bool = true, dateAdded: Date = Date(timeIntervalSince1970: (365*48+60)*24*60*60*60), dateComplete: Date? = nil, startDate: Date = Date(timeIntervalSince1970: (365*48+60)*24*60*60*60), days: Int = 30, currentDay: Int = 1) {
        
        assert(!done && dateComplete == nil)
        
        self.name = name
        self.done = done
        self.startDate = startDate
        self.days = days
        self.currentDay = currentDay
        self.dateAdded = dateAdded
        self.dateComplete = dateComplete
    }
    
    var strDayOfDays: String {
        return "\(currentDay)/\(days)"
    }
    
}
