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
            let selectionPath = NSBezierPath(rect: selectionRect)
            selectionPath.fill()
            drawSeparator(in: dirtyRect)
        }
    }

    override func drawSeparator(in dirtyRect: NSRect) {
        if isNextRowSelected || isSelected {
            drawSeparator(in: dirtyRect, fullWidth: true)
        } else {
            drawSeparator(in: dirtyRect, fullWidth: false)
        }
    }
    
    func drawSeparator(in dirtyRect: NSRect, fullWidth: Bool) {
        let path = NSBezierPath()
        path.lineWidth = 1
        
        let y = dirtyRect.height - 0.5
        var startPoint, endPoint: CGPoint
        if fullWidth {
             startPoint = CGPoint(x: 0, y: y)
             endPoint = CGPoint(x: dirtyRect.width, y: y)
        } else {
             startPoint = CGPoint(x: FSTableSeparatorMargin.start, y: y)
             endPoint = CGPoint(x: dirtyRect.width - FSTableSeparatorMargin.end, y: y)
        }
        path.move(to: startPoint)
        path.line(to: endPoint)
        
        FSColor.tableGrid.setStroke()
        path.stroke()
    }
    
}

protocol FocusSheetTableRowDelegate: class {
    func onSelected(_ sender: NSTableRowView)
}
