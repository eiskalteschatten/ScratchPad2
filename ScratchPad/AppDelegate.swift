//
//  AppDelegate.swift
//  ScratchPad
//
//  Created by Alex Seifert on 26.03.18.
//  Copyright © 2018 Alex Seifert. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let note = Note(name: "new name here", content: "some sort of content")
        print(note.getPathToNote())
        print(note.getFullPathToNote())
        print(note.getName())
        print(note.getDateModified())
        print(note.getContents())
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

