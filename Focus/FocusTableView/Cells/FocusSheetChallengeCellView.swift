//
//  FocusSheetChallengeCellView.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 27/02/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Cocoa

class FocusSheetChallengeCellView: NSTableCellView, FocusSheetTableCellView {
    
    @IBOutlet weak var itemColorLabel: LabelColorView!
    @IBOutlet weak var checkbox: NSButton!
    @IBOutlet weak var nameLabel: NSTextField!
    @IBOutlet weak var otherLabel: NSTextField!
    
    weak var cellDelegate: FocusSheetTableCellDelegate?
    
    @IBAction func checkboxClicked(_ sender: NSButton) {
        cellDelegate?.onStateChange(sender)
    }
    @IBAction func nameFinishedEditing(_ sender: NSTextField) {
        cellDelegate?.onNameChange(nameLabel)
    }
}

