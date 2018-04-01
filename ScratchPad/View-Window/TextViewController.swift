//
//  ViewController.swift
//  ScratchPad
//
//  Created by Alex Seifert on 26.03.18.
//  Copyright © 2018 Alex Seifert. All rights reserved.
//

import Cocoa

class TextViewController: NSViewController {
    @IBOutlet var mainTextView: NSTextView!
    @IBOutlet weak var noteTitleField: NSTextField!
    @IBOutlet weak var noteDateLabel: NSTextField!
    @IBOutlet weak var notePageNumberLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noteTitleField.stringValue = "title"
        noteDateLabel.stringValue = "date"
        notePageNumberLabel.stringValue = "0"
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func toggleEditorToolbar(_ sender: AnyObject) {
        mainTextView.usesInspectorBar = mainTextView.usesInspectorBar ? false : true
    }
}

