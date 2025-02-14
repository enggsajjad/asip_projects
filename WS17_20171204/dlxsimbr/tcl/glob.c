/* File-name wildcard pattern matching for GNU.
   Copyright (C) 1985, 1988 Free Software Foundation, Inc.

		       NO WARRANTY

  BECAUSE THIS PROGRAM IS LICENSED FREE OF CHARGE, WE PROVIDE ABSOLUTELY
NO WARRANTY, TO THE EXTENT PERMITTED BY APPLICABLE STATE LAW.  EXCEPT
WHEN OTHERWISE STATED IN WRITING, FREE SOFTWARE FOUNDATION, INC,
RICHARD M. STALLMAN AND/OR OTHER PARTIES PROVIDE THIS PROGRAM "AS IS"
WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING,
BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY
AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE PROGRAM PROVE
DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR
CORRECTION.

 IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW WILL RICHARD M.
STALLMAN, THE FREE SOFTWARE FOUNDATION, INC., AND/OR ANY OTHER PARTY
WHO MAY MODIFY AND REDISTRIBUTE THIS PROGRAM AS PERMITTED BELOW, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY LOST PROFITS, LOST MONIES, OR
OTHER SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE
USE OR INABILITY TO USE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR
DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY THIRD PARTIES OR
A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS) THIS
PROGRAM, EVEN IF YOU HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGES, OR FOR ANY CLAIM BY ANY OTHER PARTY.

		GENERAL PUBLIC LICENSE TO COPY

  1. You may copy and distribute verbatim copies of this source file
as you receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy a valid copyright notice "Copyright
(C) 1988 Free Software Foundation, Inc."; and include following the
copyright notice a verbatim copy of the above disclaimer of warranty
and of this License.

  2. You may modify your copy or copies of this source file or
any portion of it, and copy and distribute such modifications under
the terms of Paragraph 1 above, provided that you also do the following:

    a) cause the modified files to carry prominent notices stating
    that you changed the files and the date of any change; and

    b) cause the whole of any work that you distribute or publish,
    that in whole or in part contains or is a derivative of this
    program or any part thereof, to be licensed at no charge to all
    third parties on terms identical to those contained in this
    License Agreement (except that you may choose to grant more extensive
    warranty protection to some or all third parties, at your option).

    c) You may charge a distribution fee for the physical act of
    transferring a copy, and you may at your option offer warranty
    protection in exchange for a fee.

Mere aggregation of another unrelated program with this program (or its
derivative) on a volume of a storage or distribution medium does not bring
the other program under the scope of these terms.

  3. You may copy and distribute this program (or a portion or derivative
of it, under Paragraph 2) in object code or executable form under the terms
of Paragraphs 1 and 2 above provided that you also do one of the following:

    a) accompany it with the complete corresponding machine-readable
    source code, which must be distributed under the terms of
    Paragraphs 1 and 2 above; or,

    b) accompany it with a written offer, valid for at least three
    years, to give any third party free (except for a nominal
    shipping charge) a complete machine-readable copy of the
    corresponding source code, to be distributed under the terms of
    Paragraphs 1 and 2 above; or,

    c) accompany it with the information you received as to where the
    corresponding source code may be obtained.  (This alternative is
    allowed only for noncommercial distribution and only if you
    received the program in object code or executable form alone.)

For an executable file, complete source code means all the source code for
all modules it contains; but, as a special exception, it need not include
source code for modules which are standard libraries that accompany the
operating system on which the executable file runs.

  4. You may not copy, sublicense, distribute or transfer this program
except as expressly provided under this License Agreement.  Any attempt
otherwise to copy, sublicense, distribute or transfer this program is void and
your rights to use the program under this License agreement shall be
automatically terminated.  However, parties who have received computer
software programs from you with this License Agreement will not have
their licenses terminated so long as such parties remain in full compliance.


In other words, you are welcome to use, share and improve this program.
You are forbidden to forbid anyone else to use, share and improve
what you give them.   Help stamp out software-hoarding!  */


/* To whomever it may concern: I have never seen the code which most
 Unix programs use to perform this function.  I wrote this from scratch
 based on specifications for the pattern matching.  */

#include <sys/types.h>

#ifdef USG_OLD
#include <ndir.h>
#include <memory.h>
#include <string.h>
/* #define bcopy(s, d, n) ((void) memcpy ((d), (s), (n))) */

extern char *memcpy ();

#else  /* not USG */

#ifdef HPUX
#include <sys/dir.h>
#endif

#define USG
#ifdef USG
#include <sys/dir.h>
#include <dirent.h>

#include <string.h>
#define direct dirent
#define DP_NAMELEN(x) strlen ((x)->d_name)
#else
#include <sys/dir.h>
#include <strings.h>
/* extern bcopy (); */
#endif  /* USG */
#endif  /* USG_OLD */

#ifndef DP_NAMELEN
#define DP_NAMELEN(x) (x)->d_namlen
#endif

#ifdef	sparc
#include <alloca.h>
#else
/*extern char *alloca ();   /* ASIP: REMOVED, BECAUSE IT CREATED A LINKER ERROR WITH SUSE 10 */
#endif	/* sparc */

#ifndef NULL
#define NULL 0
#endif


/* Global variable which controls whether or not * matches .files.
   Non-zero says no match. */
int noglob_dot_filenames = 1;


static int glob_match_after_star ();

/* Return nonzero if PATTERN has any special globbing chars in it.  */
int
glob_pattern_p (pattern)
     char *pattern;
{
  register char *p = pattern;
  register char c;

  while ((c = *p++))
    {
      switch (c)
	{
	case '?':
	case '[':
	case '*':
	  return 1;

	case '\\':
	  if (*p++ == 0) return 0;
	default:
	  ;
	}
    }

  return 0;
}


/* Match the pattern PATTERN against the string TEXT;
   return 1 if it matches, 0 otherwise.

   A match means the entire string TEXT is used up in matching.

   In the pattern string, `*' matches any sequence of characters,
   `?' matches any character, [SET] matches any character in the specified set,
   [^SET] matches any character not in the specified set.

   A set is composed of characters or ranges; a range looks like
   character hyphen character (as in 0-9 or A-Z).
   [0-9a-zA-Z_] is the set of characters allowed in C identifiers.
   Any other character in the pattern must be matched exactly.

   To suppress the special syntactic significance of any of `[]*?^-\',
   and match the character exactly, precede it with a `\'.

   If DOT_SPECIAL is nonzero,
   `*' and `?' do not match `.' at the beginning of TEXT.  */

int
glob_match (pattern, text, dot_special)
     char *pattern, *text;
     int dot_special;
{
  register char *p = pattern, *t = text;
  register char c;

  while ((c = *p++))
    {
      switch (c)
	{
	case '?':
	  if (*t == 0 || (dot_special && t == text && *t == '.')) return 0;
	  else ++t;
	  break;

	case '\\':
	  if (*p++ != *t++) return 0;
	  break;

	case '*':
	  if (dot_special && t == text && *t == '.')
	    return 0;
	  return glob_match_after_star (p, t);

	case '[':
	  {
	    register char c1 = *t++;
	    register int invert = (*p == '^');

	    if (invert) p++;

	    c = *p++;
	    while (1)
	      {
		register char cstart = c, cend = c;

		if (c == '\\')
		  {
		    cstart = *p++; cend = cstart;
		  }

		if (!c) return (0);

		c = *p++;

		if (c == '-')
		  {
		    cend = *p++;
		    if (cend == '\\')
		      cend = *p++;
		    if (!cend) return (0);
		    c = *p++;
		  }
		if (c1 >= cstart && c1 <= cend) goto match;
		if (c == ']')
		  break;
	      }
	    if (!invert) return 0;
	    break;

	  match:
	    /* Skip the rest of the [...] construct that already matched.  */
	    while (c != ']')
	      { 
	        if (!c || !(c = *p++)) return (0);
		if (c == '\\') p++;
	      }
	    if (invert) return 0;
	    break;
	  }

	default:
	  if (c != *t++) return 0;
	}
    }

  if (*t) return 0;
  return 1;
}

/* Like glob_match, but match PATTERN against any final segment of TEXT.  */

static int
glob_match_after_star (pattern, text)
     char *pattern, *text;
{
  register char *p = pattern, *t = text;
  register char c, c1;

  while ((c = *p++) == '?' || c == '*')
    {
      if (c == '?' && *t++ == 0)
	return 0;
    }

  if (c == 0)
    return 1;

  if (c == '\\') c1 = *p;
  else c1 = c;

  for (;;)
    {
      if ((c == '[' || *t == c1) 
          && glob_match (p - 1, t, 0))
	return 1;
      if (*t++ == 0) return 0;
    }
}

/* Return a vector of names of files in directory DIR
   whose names match glob pattern PAT.
   The names are not in any particular order.
   Wildcards at the beginning of PAT do not match an initial period.

   The vector is terminated by an element that is a null pointer.

   To free the space allocated, first free the vector's elements,
   then free the vector.

   Return 0 if cannot get enough memory to hold the pointer
   and the names.

   Return -1 if cannot access directory DIR.
   Look in errno for more information.  */

char **
glob_vector (pat, dir)
     char *pat;
     char *dir;
{
  struct globval
    {
      struct globval *next;
      char *name;
    };

  DIR *d;
  register struct direct *dp;
  struct globval *lastlink;
  register struct globval *nextlink;
  register char *nextname;
  int count;
  int lose;
  register char **name_vector;
  register int i;

  if (!(d = opendir (dir)))
    return (char **) -1;

  lastlink = 0;
  count = 0;
  lose = 0;

  /* Scan the directory, finding all names that match.
     For each name that matches, allocate a struct globval
     on the stack and store the name in it.
     Chain those structs together; lastlink is the front of the chain.  */
  /* Loop reading blocks */
  while (1)
    {
      dp = readdir (d);
      if (!dp) break;
      if (dp->d_ino && glob_match (pat, dp->d_name, noglob_dot_filenames))
	{
	  nextlink = (struct globval *) alloca (sizeof (struct globval));
	  nextlink->next = lastlink;
	  nextname = (char *) malloc (DP_NAMELEN (dp) + 1);
	  if (!nextname)
	    {
	      lose = 1;
	      break;
	    }
	  lastlink = nextlink;
	  nextlink->name = nextname;
	  bcopy (dp->d_name, nextname, (int)DP_NAMELEN(dp) + 1);
	  count++;
	}
    }
  closedir (d);

  name_vector = (char **) malloc ((unsigned)(count + 1) * sizeof (char *));

  /* Have we run out of memory?  */
  if (!name_vector || lose)
    {
      /* Here free the strings we have got */
      while (lastlink)
	{
	  free (lastlink->name);
	  lastlink = lastlink->next;
	}
      return 0;
    }

  /* Copy the name pointers from the linked list into the vector */
  for (i = 0; i < count; i++)
    {
      name_vector[i] = lastlink->name;
      lastlink = lastlink->next;
    }

  name_vector[count] = 0;
  return name_vector;
}

/* Return a new array which is the concatenation of each string in
   ARRAY to DIR. */

static char **
glob_dir_to_array (dir, array)
     char *dir, **array;
{
  register int i, l;
  int add_slash = 0;
  char **result;

  l = strlen (dir);
  if (!l) return (array);

  if (dir[l - 1] != '/') add_slash++;

  for (i = 0; array[i]; i++);

  result = (char **)malloc ((unsigned)(1 + i) * sizeof (char *));
  if (!result) return (result);

  for (i = 0; array[i]; i++) {
    result[i] = (char *)malloc ((unsigned) 1 + l + add_slash +
	    strlen (array[i]));
    if (!result[i]) return (char **)NULL;
    strcpy (result[i], dir);
    if (add_slash) strcat (result[i], "/");
    strcat (result[i], array[i]);
  }
  result[i] = (char *)NULL;

  /* Free the input array. */
  for (i = 0; array[i]; i++) free (array[i]);
  free ((char *)array);
  return (result);
}

/* Do globbing on PATHNAME.  Return an array of pathnames that match,
   marking the end of the array with a null-pointer as an element.
   If no pathnames match, then the array is empty (first element is null).
   If there isn't enough memory, then return NULL.
   If a file system error occurs, return -1; `errno' has the error code.

   Wildcards at the beginning of PAT, or following a slash,
   do not match an initial period.  */

char **
glob_filename (pathname)
     char *pathname;
{
  char **result = (char **)malloc (1 * sizeof (char *));
  int i, result_size = 1;
  char *directory_name, *filename;

  if (result) result[0] = (char *)NULL;
  else return (result);

  /* Find the filename. */
  i = strlen (pathname) - 1;

look_again:
  while (i > -1 && pathname[i] != '/') i--;
  if (i > 0 && pathname[i - 1] == '\\')
    {
      --i;
      goto look_again;
    }
  i++;

  filename = (char *)alloca (strlen (pathname) - i + 1);
  directory_name = (char *)alloca (i + 1);

  if (!filename || !directory_name)
    {
    memory_error:
      if (result)
	{
	  for (i = 0; result[i]; i++)
	    free (result[i]);
	  free ((char *)result);
	}
      return (char **)NULL;
    }

  strcpy (filename, pathname + i);
  strncpy (directory_name, pathname, i);
  directory_name[i] = '\0';

  /* If directory_name contains globbing characters, then we have
     to expand the previous levels.  Just recurse. */

  if (glob_pattern_p (directory_name))
    {
      char **directories;

      if (directory_name[i - 1] == '/')
	directory_name[i - 1] = '\0';

      directories = glob_filename (directory_name);

      if (directories == (char **)NULL) goto memory_error;
      if ((directories == (char **)-1) || !(*directories))
	return (directories);

      /* We have successfully globbed the preceding directory name.
	 For each name in DIRECTORIES, call glob_vector on it and
	 FILENAME.  Concatenate the results together. */
      for (i = 0; directories[i]; i++)
	{
	  char **temp_results = glob_vector (filename, directories[i]);
	  /* Handle error cases ... */
	  if (!temp_results) goto memory_error;
	  if (temp_results == (char **)-1)
	    {
	      /* This filename is probably not a directory.  Ignore it. */
	    }
	  else
	    {
	      char **array = glob_dir_to_array (directories[i], temp_results);
	      register int l = 0;

	      while (array[l]) l++;

	      result =
		(char **)realloc ((char *)result,
			(unsigned) (result_size + l) * sizeof (char *));
	      for (l = 0; array[l]; l++, result_size++)
		result[result_size - 1] = array[l];
	      result[result_size - 1] = (char *)NULL;
	      free ((char *)array);	/* DO NOT FREE THE STRINGS, THOUGH! */
	    }
	}
      /* Free the directories. */
      for (i = 0; directories[i]; i++)
	free (directories[i]);
      free ((char *)directories);
    }
  else
    {
      /* Otherwise, just return what glob_vector returns appended to
	 the directory name. */
      char **temp_results;

      if (*directory_name)
	temp_results = glob_vector (filename, directory_name);
      else
	temp_results = glob_vector (filename, ".");

      if (!temp_results || ((int)temp_results) == -1)
	return temp_results;

      result = glob_dir_to_array (directory_name, temp_results);
    }
  return result;
}



#ifdef TEST

main (argc, argv)
     int argc;
     char **argv;
{
  char **value;
  int i, index = 1;

  while (index < argc) {
    value = glob_filename (argv[index]);
    if ((int) value == 0)
      printf ("Memory exhausted.\n");
    else if ((int) value == -1)
      perror (argv[index]);
    else
      for (i = 0; value[i]; i++)
	printf ("%s\n", value[i]);
    index++;
  }
  return 0;
}

#endif /* TEST */
