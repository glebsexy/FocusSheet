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
    
    var isDrawn: Bool = false
    var isPriority: Bool = false
    var isChallenge: Bool = false
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        isDrawn = true
        setType(isPriority, isChallenge)
    }
    
    func setType(priority isPriority: Bool) {
        setType(isPriority)
    }
    
    
    func setType(challenge isChallenge: Bool) {
        setType(isChallenge)
    }
    
    private func setType(_ isPriority: Bool = false, _ isChallenge: Bool = false) {
        self.isPriority = isPriority
        self.isChallenge = isChallenge
        
        guard isDrawn else {
            return
        }
        
        if !isPriority && !isChallenge {
            fill(with: FSColor.regular)
        } else if isPriority && !isChallenge {
            fill(with: FSColor.priority)
        } else if !isPriority && isChallenge {
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
