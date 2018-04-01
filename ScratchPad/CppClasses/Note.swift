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
    
    init(name: String, content: String) {
        self.cppPointer = noteCreateNew(Constants.Path.pathToNotes, "Note Name", "content here")
        super.init()
    }
    
    func save() {
        noteSave(self.cppPointer)
    }
    
    func deleteNote() {
        noteDeleteNote(self.cppPointer)
    }
    
    func exportNote(destination: String) {
        noteExportNote(self.cppPointer, destination)
    }
    
    deinit {
        noteDeconstructor(self.cppPointer)
    }
    
    
    // Getters
    
    func getPathToNote() -> String {
        return String(cString: noteGetPathToNote(self.cppPointer))
    }
    
    func getFullPathToNote() -> String {
        return String(cString: noteGetFullPathToNote(self.cppPointer))
    }
    
    func getName() -> String {
        return String(cString: noteGetName(self.cppPointer))
    }
    
    func getDateModified() -> String {
        return String(cString: noteGetDateModified(self.cppPointer))
    }
    
    func getContents() -> String {
        return String(cString: noteGetContents(self.cppPointer))
    }
    
    func getPageNumber() -> Int32 {
        return noteGetPageNumber(self.cppPointer)
    }
}
