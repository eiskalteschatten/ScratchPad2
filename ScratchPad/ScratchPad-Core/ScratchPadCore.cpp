//
//  ScratchPadCore.cpp
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

extern "C" const char * noteGetName(const void *const n) {
    const Note *const note = (Note *) n;
    return note->getName().c_str();
}
