//
//  NoteWrapper.cpp
//  ScratchPad
//
//  Created by Alex Seifert on 31/03/2018.
//  Copyright © 2018 Alex Seifert. All rights reserved.
//

#include <stdio.h>
#include "Note.h"

extern "C" void * noteCreateNew(const char * ptn, const char * n, const char * c) {
    Note *note = new Note(ptn, n, c);
    return note;
}

extern "C" void noteSave(const void *const n) {
    Note *const note = (Note *) n;
    note->save();
}

extern "C" void noteDeleteNote(const void *const n) {
    Note *const note = (Note *) n;
    note->deleteNote();
}

extern "C" void noteExportNote(const void *const n, const char* destination) {
    Note *const note = (Note *) n;
    note->exportNote(destination);
}

extern "C" void noteDeconstructor(const void *const n) {
    const Note *const note = (Note *) n;
    delete note;
}

// Getters

extern "C" const char * noteGetPathToNote(const void *const n) {
    const Note *const note = (Note *) n;
    return note->getPathToNote().c_str();
}

extern "C" const char * noteGetFullPathToNote(const void *const n) {
    const Note *const note = (Note *) n;
    return note->getFullPathToNote().c_str();
}

extern "C" const char * noteGetName(const void *const n) {
    const Note *const note = (Note *) n;
    return note->getName().c_str();
}

extern "C" const char * noteGetDateModified(const void *const n) {
    const Note *const note = (Note *) n;
    return note->getDateModified().c_str();
}

extern "C" const char * noteGetContents(const void *const n) {
    const Note *const note = (Note *) n;
    return note->getContents().c_str();
}

extern "C" int noteGetPageNumber(const void *const n) {
    const Note *const note = (Note *) n;
    return note->getPageNumber();
}
