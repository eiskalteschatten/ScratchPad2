//
//  ScratchPadCore.cpp
//  ScratchPad
//
//  Created by Alex Seifert on 31/03/2018.
//  Copyright © 2018 Alex Seifert. All rights reserved.
//

#include <stdio.h>
#include "Note.h"

extern "C" void * noteCreateNew() {
    std::string pathToNote = "/tmp/libscratchpad/";
    std::string noteName = "test note";
    std::string contents = "note contents should go here";
    std::string fullPathToNote = pathToNote + "test_note.rtfd";
    
    Note *note = new Note(pathToNote, noteName, contents);
    return note;
}

extern "C" const char * noteGetFullPath(const void *const n) {
    const Note *const note = (Note *) n;
    return note->getName().c_str();
}
