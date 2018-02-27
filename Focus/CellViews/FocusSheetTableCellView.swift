//
//  FocusSheetTableCellView.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 22/02/2018.
//  Copyright © 2018 Gleb Sabirzyanov. All rights reserved.
//

import Cocoa

protocol FocusSheetTableCellView {

    weak var itemColorLabel: LabelColorView! { get set }
    weak var checkbox: NSButton! { get set }
    weak var nameLabel: NSTextField! { get set }
    weak var otherLabel: NSTextField! { get set }
    
    weak var cellDelegate: FocusSheetTableCellDelegate? { get set }
    
    func checkboxClicked(_ sender: NSButton)
    func nameFinishedEditing(_ sender: NSTextField)
    
}

protocol FocusSheetTableCellDelegate: class {
    func onStateChange(_ sender: NSButton)
    func onNameChange(_ sender: NSTextField)
}
