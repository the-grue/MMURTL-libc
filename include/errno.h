/* errno.h standard header */
#ifndef _ERRNO
#define _ERRNO
#ifndef _YVALS
#include <yvals.h>
#endif
		/* error codes */
#define EDOM	_EDOM
#define ERANGE	_ERANGE
#define EFPOS	_EFPOS
#define ENOENT	2
#define ENOMEM	12
#define EINVAL	22
#define EMLINK	31
#define _NERR	_ERRMAX	/* one more than last code */
		/* declarations */
extern int errno;
#endif
