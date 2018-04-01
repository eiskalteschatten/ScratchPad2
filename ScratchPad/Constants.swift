//
//  Constants.swift
//  ScratchPad
//
//  Created by Alex Seifert on 01/04/2018.
//  Copyright © 2018 Alex Seifert. All rights reserved.
//

import Foundation

struct Constants {
    struct Path {
        static let appSupportDirectory = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first?.absoluteString
        static let appSupportScratchpad = NSURL(fileURLWithPath: Constants.Path.appSupportDirectory!).appendingPathComponent("ScratchPad")?.absoluteString
        static let pathToNotes = NSURL(fileURLWithPath: Constants.Path.appSupportScratchpad!).appendingPathComponent("Notes")?.absoluteString
        static let pathToSettings = NSURL(fileURLWithPath: Constants.Path.appSupportScratchpad!).appendingPathComponent("Preferences")?.absoluteString
        static let temp = NSTemporaryDirectory()
    }
}
