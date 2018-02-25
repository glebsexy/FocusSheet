//
//  LabelColorView.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 23/02/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Cocoa

@IBDesignable
class LabelColorView: NSView {
    
    var isDrawn = false
    var currentType: TodoListItemType = .regular
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        isDrawn = true
        setType(currentType)
    }
    
    func setType(_ type: TodoListItemType) {
        currentType = type
        guard isDrawn else {
            return
        }
        switch type {
        case .regular:
            fill(with: FSColor.regular)
        case .priority:
            fill(with: FSColor.priority)
        case .challenge:
            fill(with: FSColor.challenge)
        }
    }
    
    // MARK: Private methods
    
    private func fill(with color: NSColor) {
        let rect = NSInsetRect(self.bounds, 0, 0)
        color.setFill()
        rect.fill()
    }
    
}
