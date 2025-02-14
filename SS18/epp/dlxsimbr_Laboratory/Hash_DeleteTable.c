/* 
 * Hash_DeleteTable.c --
 *
 *	Source code for the Hash_DeleteTable library procedure.
 *
 * Copyright 1988 Regents of the University of California
 * Permission to use, copy, modify, and distribute this
 * software and its documentation for any purpose and without
 * fee is hereby granted, provided that the above copyright
 * notice appear in all copies.  The University of California
 * makes no representations about the suitability of this
 * software for any purpose.  It is provided "as is" without
 * express or implied warranty.
 */

#ifndef lint
static char rcsid[] = "$Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/Hash_DeleteTable.c,v 1.1.1.2 2004/08/30 09:15:05 sascha Exp $ SPRITE (Berkeley)";
#endif not lint

#include "hash.h"
#include <list.h>
#include <stdlib.h>

/*
 *---------------------------------------------------------
 *
 * Hash_DeleteTable --
 *
 *	This routine removes everything from a hash table
 *	and frees up the memory space it occupied (except for
 *	the space in the Hash_Table structure).
 *
 * Results:	
 *	None.
 *
 * Side Effects:
 *	Lots of memory is freed up.
 *
 *---------------------------------------------------------
 */

void
Hash_DeleteTable(tablePtr)
    Hash_Table *tablePtr;		/* Hash table whose entries are all to
					 * be freed.  */
{
    register List_Links *hashTableEnd;
    register Hash_Entry *hashEntryPtr;
    register List_Links *bucketPtr;

    bucketPtr = tablePtr->bucketPtr;
    hashTableEnd = &(bucketPtr[tablePtr->size]);
    for (; bucketPtr < hashTableEnd; bucketPtr++) {
	while (!List_IsEmpty(bucketPtr)) {
	    hashEntryPtr = (Hash_Entry *) List_First(bucketPtr);
	    List_Remove((List_Links *) hashEntryPtr);
	    free((Address) hashEntryPtr);
	}
    }
    free((Address) tablePtr->bucketPtr);

    /*
     * Set up the hash table to cause memory faults on any future
     * access attempts until re-initialization.
     */

    tablePtr->bucketPtr = (List_Links *) NIL;
}
