//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

// Note
void * noteCreateNew(const char * ptn, const char * n, const char * c);
void noteSave(const void *const n);
void noteDeleteNote(const void *const n);
void noteExportNote(const void *const n, const char* destination);
void noteDeconstructor(const void *const n);

// Note Getters
const char * noteGetPathToNote(const void *const n);
const char * noteGetFullPathToNote(const void *const n);
const char* noteGetName(const void *const n);
const char * noteGetDateModified(const void *const n);
const char * noteGetContents(const void *const n);
int noteGetPageNumber(const void *const n);
