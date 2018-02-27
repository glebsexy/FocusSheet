//
//  FocusSheetTableRowView.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 23/02/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Cocoa

class FocusSheetTableRowView: NSTableRowView {
    
    /// Makes a selection of a custom color
    ///
    /// - Parameter dirtyRect: whole row as a rectangle
    override func drawSelection(in dirtyRect: NSRect) {
        if self.selectionHighlightStyle != .none {
            let selectionRect = NSInsetRect(self.bounds, 0, 0)
            FSColor.selectedCell.setFill()
            let selectionPath = NSBezierPath.init(rect: selectionRect)
            selectionPath.fill()
        }
    }
    
}
