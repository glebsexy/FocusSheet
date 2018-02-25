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
    
    var data: [TodoListItem] = MyData().data
    
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
        let view: FocusSheetTableCellView = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "defaultRow"), owner: self) as! FocusSheetTableCellView
        view.cellDelegate = self
        view.nameLabel.stringValue = data[row].name
        if data[row].type == .priority {
            view.nameLabel.font = NSFontManager.shared.convert(view.nameLabel.font!, toHaveTrait: .boldFontMask)
        }
        view.checkbox.state = data[row].done ? NSControl.StateValue.on : NSControl.StateValue.off
        if let challenge = data[row].challengeString() {
            view.otherLabel.stringValue = challenge
        } else {
            view.otherLabel.stringValue = ""
        }
        view.itemColorLabel.setType(data[row].type)
        return view
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

