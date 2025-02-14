/*
 * string.h --
 *
 *	Declarations of ANSI C library procedures for string handling.
 *
 * Copyright 1988 Regents of the University of California
 * Permission to use, copy, modify, and distribute this
 * software and its documentation for any purpose and without
 * fee is hereby granted, provided that the above copyright
 * notice appear in all copies.  The University of California
 * makes no representations about the suitability of this
 * software for any purpose.  It is provided "as is" without
 * express or implied warranty.
 *
 * $Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/tcl/string.h,v 1.1.1.2 2004/08/30 09:15:06 sascha Exp $ SPRITE (Berkeley)
 */

#ifndef _STRING
#define _STRING

extern char *	memchr();
extern int	memcmp();
extern char *	memcpy();
extern char *	memset();

extern char *	strcat();
extern char *	strchr();
extern int	strcmp();
extern char *	strcpy();
extern int	strcspn();
extern const char* const strerror();
extern int	strlen();
extern char *	strncat();
extern int	strncmp();
extern char *	strncpy();
extern char *	strpbrk();
extern char *	strrchr();
extern int	strspn();
extern char *	strstr();
extern char *   strtok();

/*
 * Obsolete library procedures from BSD, supported for compatibility:
 */

extern char	*index();
extern char	*rindex();

#endif /* _STRING */
