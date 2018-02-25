//
//  TodoListItem.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 24/01/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Cocoa

class TodoListItem {
    
    typealias ChallengeType = (day: Int, ofDays: Int)
    
    var name: String
    var done: Bool
    var type: TodoListItemType
    var challenge: ChallengeType?
    
    init(name: String, done: Bool, type: TodoListItemType = TodoListItemType.regular, challenge: ChallengeType? = nil) {
        self.name = name
        self.done = done
        self.challenge = challenge
        if challenge != nil {
            self.type = .challenge
        } else {
            self.type = type
        }
    }
    
    /// Turns challenge days information into a human readable format
    ///
    /// - Returns: String to be shown in the label
    func challengeString() -> String? {
        guard challenge != nil else {
            return nil
        }
        return "\(challenge!.day)/\(challenge!.ofDays)"
    }
    
}

/// Type of the list item
///
/// - regular: nothing special
/// - priority: item with high priority
/// - challenge: one of the challenge items
enum TodoListItemType {
    case regular, priority, challenge
}

extension TodoListItem {
    
    func getItemTypeIcon(type: TodoListItemType) -> NSImage {
        switch type {
        case .regular:
            return NSImage(named: NSImage.Name.statusNone)!
        case .priority:
            return NSImage(named: NSImage.Name.statusUnavailable)!
        case .challenge:
            return NSImage(named: NSImage.Name.statusPartiallyAvailable)!
        }
    }
    
    func getItemTypeIcon() -> NSImage {
        return getItemTypeIcon(type: self.type)
    }
    
}
