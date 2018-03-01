//
//  FocusSheetTableView.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 01/03/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Cocoa

class FocusSheetTableView: NSTableView {
    
//    Draw custom table grid
    override func drawGrid(inClipRect clipRect: NSRect) {
        
        guard clipRect.height > FSTableRowHeight.small else {
            return
        }
        
        let path = NSBezierPath()
        path.lineWidth = 1
        
        for i in 1 ... Int(clipRect.height / FSTableRowHeight.small) {
            
            let y = clipRect.origin.y + CGFloat(i) * FSTableRowHeight.small - 0.5
            let startPoint = CGPoint(x: FSTableSeparatorMargin.start, y: y)
            let endPoint = CGPoint(x: clipRect.width - FSTableSeparatorMargin.end, y: y)
            
            path.move(to: startPoint)
            path.line(to: endPoint)
        }
        
        FSColor.tableGrid.setStroke()
        path.stroke()
        
    }
    
}
