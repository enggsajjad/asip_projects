/* TclGlob.c -
 *
 *     	This file contains routines to glob filenames.  It calls
 *	glob routines from GNU.
 *
 */

#ifndef lint
static char rcsid[] = "$Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/tcl/tclGlob.c,v 1.1.1.2 2004/08/30 09:15:06 sascha Exp $ SPRITE (Berkeley)";
#endif

#include <string.h>
#include <list.h>
#include <pwd.h>
#include <tcl.h>
#include <errno.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

extern const char* const sys_errlist[];

/*
 * Structure to hold a list of strings.
 */
typedef struct {
    List_Links links;
    char *str;
} stringList;

/*
 * Free the linked list.  This macro requires stringElt to be defined.
 */
#define FREE(list) \
	while (!List_IsEmpty((list))) { \
	    stringElt=(stringList *)List_First((list)); \
	    List_Remove((List_Links *)stringElt); \
	    if (stringElt->str != NULL) { \
		free(stringElt->str); \
	    } \
	    free((char *)stringElt); \
	} \
	free((char *)(list))

/*
 * ----------------------------------------------------------------------------
 *
 * BraceExpand --
 *
 *      Expands a filename containing {} braces.
 *	If inBrace==0, this routine matches expression E, where
 *		E = string
 *	    or	E = [E]{E,...,E}[E]
 *	otherwise this routine matches a similar expression E1, where
 *		E1 = string (stopping at comma or closing brace)
 *	    or	E1 = [E1]{E,...,E}[E1]
 *	That is, commas and closing braces will stop the parsing. 
 *	
 * Results:
 *	
 *	The position of the next character in the input is returned.
 *	This position will point to '\0', or possibly ',' if inBrace is true.
 *      The resulting list of strings is returned in strList.
 *	In case of an error, NULL will be returned and the error
 *	message will be returned in the list of strings.
 *
 * Side effects:
 *      Allocates memory for the list of strings.
 *
 * ----------------------------------------------------------------------------
 */
static char*
BraceExpand(str,inBrace,strList)
    char *str;			/* String to expand. */
    int inBrace;		/* True if inside a brace. */
    List_Links **strList;	/* List of strings. */
{
    List_Links *headerPtr;	/* Header of string list. */
    stringList *stringElt;	/* Element of string list. */
    List_Links *leftHdr;	/* Left part of expanded name. */
    List_Links *rightHdr;	/* Right part of expanded name. */
    char *strPtr;		/* Pointer into the string. */
    char *next;			/* Next position in string. */
    int len;			/* String length. */
    List_Links *leftPtr;	/* Pointer to left string element. */
    char *left;			/* Left string. */
    int leftLen;		/* Length of left string. */
    List_Links *rightPtr;	/* Pointer to right string element. */
    char *right;		/* Right string. */

    headerPtr = (List_Links *)malloc(sizeof(List_Links));
    List_Init(headerPtr);
	
    if (inBrace) {
	strPtr = strpbrk(str,"{,}");
    } else {
	strPtr = strchr(str,'{');
    }
    if (strPtr==NULL || *strPtr=='}' || *strPtr==',') {
	/*
	 * Return a single element.
	 */
	if (strPtr==NULL) {
	    len = strlen(str);
	    strPtr = str+len;
	}
	else {
	    len = strPtr-str;
	}
	stringElt = (stringList *)malloc(sizeof(stringList));
	List_InitElement((List_Links *)stringElt);
	stringElt->str = (char *)malloc((unsigned)len+1);
	(void) strncpy(stringElt->str,str,len);
	stringElt->str[len] = '\0';
	List_Insert((List_Links *)stringElt,
		LIST_ATFRONT(headerPtr));
	*strList = headerPtr;
	return strPtr;
    }

    len = strPtr-str;
    leftHdr = (List_Links *)malloc(sizeof(List_Links));
    List_Init(leftHdr);

    /*
     * The idea is to grab a unit (string or thing in braces) from
     * the left, and put this in leftHdr.  Then recursively expand
     * the remainder, and put this in rightHdr.  Finally merge the
     * two lists
     */

    if (*str=='{') {
	next = strPtr;
	while (1) {
	    /*
	     * Expand the part in the braces.
	     */
	    next = BraceExpand(++next,1,&rightHdr);
	    if (next==NULL) {
		/*
		 * Error in BraceExpand.
		 */
		*strList = rightHdr;
		return NULL;
	    } else if (*next=='\0') {
		/*
		 * Unexpected end of string.
		 */
		FREE(leftHdr);
		FREE(rightHdr);
		stringElt = (stringList *)malloc(sizeof(stringList));
		List_InitElement((List_Links *)stringElt);
		stringElt->str = "Missing }.";
		List_Insert((List_Links *)stringElt,
			LIST_ATREAR(headerPtr));
		*strList = headerPtr;
		return NULL;
	    }
	    else {
		/*
		 * Add the new list obtained from BraceExpand to the list.
		 */
		List_ListInsert(rightHdr, LIST_ATREAR(leftHdr));
		free((char *)rightHdr);
		if (*next=='}') {
		    strPtr = next+1;
		    break;
		}
	    }
	}
    } else {
	/*
	 * leftHdr is the part before the braces.
	 */
	stringElt = (stringList *)malloc(sizeof(stringList));
	List_InitElement((List_Links *)stringElt);
	stringElt->str = (char *)malloc((unsigned)len+1);
	(void) strncpy(stringElt->str,str,len);
	stringElt->str[len] = '\0';
	List_Insert((List_Links *)stringElt,
		LIST_ATFRONT(leftHdr));
    }

    /*
     * Now expand the rest of the pattern and put this in rightHdr.
     */

    if (*strPtr=='\0' || (*strPtr==',' && inBrace)) {
	/*
	 * We can leave early.
	 */
	*strList = leftHdr;
	free((char *)headerPtr);
	return strPtr;
    }
    next = BraceExpand(strPtr,inBrace,&rightHdr);
    if (next==NULL) {
	free((char *)leftHdr);
	free((char *)headerPtr);
	*strList = rightHdr;
	return NULL;
    }

    /*
     * Merge the left and right lists of strings.
     */

    LIST_FORALL(leftHdr,leftPtr) {
	left = ((stringList *)leftPtr)->str;
	leftLen = strlen(left);
	LIST_FORALL(rightHdr,rightPtr) {
	    right = ((stringList *)rightPtr)->str;
	    stringElt = (stringList *)malloc(sizeof(stringList));
	    List_InitElement((List_Links *)stringElt);
	    stringElt->str = (char *)malloc((unsigned)strlen(left)+
		    strlen(right)+1);
	    (void)strcpy(stringElt->str,left);
	    (void)strcpy(stringElt->str+leftLen,right);
	    List_Insert((List_Links *)stringElt,
		    LIST_ATREAR(headerPtr));
	}
    }
    FREE(leftHdr);
    FREE(rightHdr);
    *strList = headerPtr;
    return next;
}



#define VALID "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\
0123456789-"

/*
 * ----------------------------------------------------------------------------
 *
 * Tilde --
 *
 *      Expands a string starting with a tilde.
 *	It is assumed that the pattern starts with a tilde.
 *	It is also assumed that we may temporarily modify pattern.
 *	
 * Results:
 *	
 *	If successful, TCL_OK is returned, and result points to the string
 *	containing the expanded filenames.
 *	Otherwise, TCL_ERROR is returned, and interp contains the error.
 *
 * Side effects:
 *      Allocates the result string if successful.
 *
 * ----------------------------------------------------------------------------
 */
static int
Tilde(pattern,interp,result)
    char *pattern;		/* Pattern to expand. */
    Tcl_Interp *interp;         /* Current interpreter. */
    char **result;		/* Result of expansion. */
{
    int len;			/* Length of tilde name. */
    struct passwd *pwPtr;	/* Password file entry. */
    char *strPtr;		/* String pointer. */
    int ret;

    pattern++;

    len = strspn(pattern,VALID);
    if (len==0) {
	/*
	 * Get home directory.
	 */
	 strPtr = (char *)getlogin();
	 if (strPtr==NULL) {
	     interp->result = "no home directory";
	     return TCL_ERROR;
	 }
    }
    else {
	 strPtr = (char *)malloc((unsigned)len+1);
	 strncpy(strPtr,pattern,len);
	 strPtr[len] = '\0';
    }
    pwPtr = getpwnam(strPtr);
    if (pwPtr==NULL) {
	 sprintf(interp->result,"Unknown user: %s.",strPtr);
	 ret = TCL_ERROR;
    }
    else {
	*result = (char *)malloc((unsigned)strlen(pattern+len)+
		strlen(pwPtr->pw_dir)+1);
	(void) strcpy(*result,pwPtr->pw_dir);
	(void) strcpy(*result+strlen(pwPtr->pw_dir),pattern+len);
	ret = TCL_OK;
    }
    if (len>0) {
	free(strPtr);
    }
    return ret;
}

/*
 * ----------------------------------------------------------------------------
 *
 * Tcl_Glob --
 *
 *      Expands a pattern in a directory using csh rules.
 *	
 * Results:
 *	A standard Tcl result.
 *
 * Side effects:
 *      See the user documentation.
 *
 * ----------------------------------------------------------------------------
 */

int
Tcl_Glob(interp, argc, argv)
    Tcl_Interp *interp;                 /* Current interpreter. */
    int argc;
    char *argv[];
{
    List_Links *stringHdr;	/* Element of string list. */
    stringList *stringElt;	/* Element of string list. */
    List_Links *resultList;	/* Results of expansion. */
    List_Links *linkPtr;	/* Pointer to linked list element. */
    int length = 0;		/* Length of result. */
    char *strPtr;		/* String pointer. */
    char *str2Ptr;		/* String pointer. */
    char **fileList;		/* List of globbed filenames */
    char **fileList1;		/* List of globbed filenames */
    int i;

    resultList = (List_Links *) malloc(sizeof(List_Links));
    List_Init(resultList);

    for (i=1;i<argc;i++) {
	/*
	 * Expand the braces in each argument and add to resultList.
	 */
	if (!strcmp(argv[i],"{") || !strcmp(argv[i],"{}")) {
	    /*
	     * Patterns "{" and "{}" are special cases.
	     */
	    stringElt = (stringList *)malloc(sizeof(stringList));
	    List_InitElement((List_Links *)stringElt);
	    stringElt->str = (char *)malloc((unsigned)strlen(argv[i])+1);
	    (void)strcpy(stringElt->str,argv[i]);
	    List_Insert((List_Links *)stringElt,
		    LIST_ATREAR(resultList));
	} else if (BraceExpand(argv[i],0,&stringHdr)==NULL) {
	    strcpy(interp->result,
		    ((stringList *)List_First(stringHdr))->str);
	    FREE(resultList);
	    FREE(stringHdr);
	    return TCL_ERROR;
	} else {
	    List_ListInsert(stringHdr,LIST_ATREAR(resultList));
	    free((char *)stringHdr);
	}
    }

    stringHdr = (List_Links *)malloc(sizeof(List_Links));
    List_Init(stringHdr);

    LIST_FORALL(resultList,linkPtr) {
	strPtr = ((stringList *)linkPtr)->str;
	if (*strPtr == '~') {
	    /*
	     * Expand tildes.
	     */
	    if (Tilde(strPtr,interp,&str2Ptr) != TCL_OK) {
		FREE(resultList);
		FREE(stringHdr);
		return TCL_ERROR;
	    } else {
		free(strPtr);
		((stringList *)linkPtr)->str = str2Ptr;
		strPtr = str2Ptr;
	    }
	}
	if (glob_pattern_p(strPtr)) {
	fileList = (char **)glob_filename(strPtr);
	    if ((int)fileList==-1) {
		strcpy(interp->result,sys_errlist[errno]);
		FREE(resultList);
		FREE(stringHdr);
		return TCL_ERROR;
	    } else {
		for (fileList1=fileList; *fileList1!='\0'; fileList1++) {
		    length += strlen(*fileList1)+1;
		    stringElt = (stringList *)malloc(sizeof(stringList));
		    List_InitElement((List_Links *)stringElt);
		    stringElt->str =
			    (char *)malloc((unsigned)strlen(*fileList1)+1);
		    strcpy(stringElt->str,*fileList1);
		    List_Insert((List_Links *)stringElt,
			    LIST_ATREAR(stringHdr));
		    free(*fileList1);
		}
		free((char *)fileList);
	    }
	} else {
	    length += strlen(strPtr)+1;
	    stringElt = (stringList *)malloc(sizeof(stringList));
	    List_InitElement((List_Links *)stringElt);
	    stringElt->str = strPtr;
	    ((stringList *)linkPtr)->str = NULL;
	    List_Insert((List_Links *)stringElt,LIST_ATREAR(stringHdr));
	}
    }
    FREE(resultList);

    if (List_IsEmpty(stringHdr)) {
	FREE(stringHdr);
	sprintf(interp->result,"%.50s couldn't find file that matches pattern",
		argv[0]);
	return TCL_ERROR;
    }

    strPtr = (char *)malloc((unsigned) length);
    interp->result = strPtr;
    interp->dynamic = 1;
    LIST_FORALL(stringHdr,linkPtr) {
	strcpy(strPtr,((stringList *)linkPtr)->str);
	strPtr += strlen(strPtr)+1;
	strPtr[-1] = ' ';
    }
    strPtr[-1] = '\0';
    FREE(stringHdr);
    return TCL_OK;
}
