//
//  ViewController.swift
//  Focus
//
//  Created by Gleb Sabirzyanov on 04/12/2017.
//  Copyright © 2017 Gleb Sabirzyanov. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var tableView: NSTableView!
    
    var data: [FocusItem] = MyData().data
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Set the table view data source
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

extension ViewController: NSTableViewDataSource, NSTableViewDelegate {
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView? {
        return FocusSheetTableRowView()
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        var view: FocusSheetTableCellView
        
        if let challenge = data[row] as? ChallengeItem {
//            Challenge item
            view = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "challengeCell"), owner: self) as! FocusSheetChallengeCellView
            
            view.otherLabel.stringValue = challenge.strDayOfDays
        } else if let task = data[row] as? TaskItem {
//            Task item
            view = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "taskCell"), owner: self) as! FocusSheetTaskCellView
            
            view.otherLabel.stringValue = "3 days ago"
        } else {
            return nil
        }
        
        view.cellDelegate = self
        view.nameLabel.stringValue = data[row].name
        view.nameLabel.font = NSFontManager.shared.convert(view.nameLabel.font!, toHaveTrait: .boldFontMask)
        
        view.checkbox.state = data[row].done ? NSControl.StateValue.on : NSControl.StateValue.off
        
        return view as? NSView
    }
    
}

extension ViewController: FocusSheetTableCellDelegate {
   
    func onStateChange(_ sender: NSButton) {
        let row = tableView.row(for: sender)
        guard row >= 0 else { return }
        if sender.state == NSControl.StateValue.on {
            data[row].done = true
        } else {
            data[row].done = false
        }
        print("State changed.")
    }
    
    func onNameChange(_ sender: NSTextField) {
        let row = tableView.row(for: sender)
        guard row >= 0 else { return }
        data[row].name = sender.stringValue
        print(data[row].name)
    }
    
}

