//
//  Note.swift
//  ScratchPad
//
//  Created by Alex Seifert on 01/04/2018.
//  Copyright © 2018 Alex Seifert. All rights reserved.
//

import Foundation

class Note: NSObject {
    private let cppPointer: UnsafeMutableRawPointer
    private let pathToNotes = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("/tmp/libscratchpad")?.absoluteString
    
    init(name: String, content: String) {
        self.cppPointer = noteCreateNew(pathToNotes, "Note Name", "content here")
        super.init()
    }
    
    func getName() -> String {
        return String(cString: noteGetName(self.cppPointer))
    }
}
