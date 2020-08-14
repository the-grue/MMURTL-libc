#  Makefile for static library of MMURTL C Standard Library

CC = gcc
AS = gcc
CFLAGS = -std=gnu99 -O0 -nostdlib -m32 -march=i386 -ffreestanding -fno-pie -fno-common -fno-asynchronous-unwind-tables -I../include

SRC = 	abort.c abs.c acos.c asctime.c asin.c atan2.c atan.c atexit.c atof.c \
	atoi.c atol.c bsearch.c calloc.c ceil.c clearerr.c clock.c cos.c \
	cosh.c ctime.c difftime.c div.c errno.c exit.c exp.c fabs.c \
	fclose.c feof.c ferror.c fflush.c fgetc.c fgetpos.c fgets.c floor.c \
	fmod.c fopen.c fprintf.c fputc.c fputs.c fread.c free.c freopen.c frexp.c \
	fscanf.c fseek.c fsetpos.c ftell.c fwrite.c getc.c getchar.c getenv.c \
	gets.c gmtime.c isalnum.c isalpha.c iscntrl.c isdigit.c isgraph.c islower.c \
	isprint.c ispunct.c isspace.c isupper.c isxdigit.c labs.c ldexp.c ldiv.c \
	localeco.c localtim.c log10.c log.c malloc.c mblen.c mbstowcs.c mbtowc.c \
	memchr.c memcmp.c memcpy.c memmove.c memset.c mktime.c modf.c perror.c \
	pow.c printf.c putc.c putchar.c puts.c qsort.c raise.c rand.c realloc.c \
	remove.c rename.c rewind.c scanf.c setbuf.c setlocal.c setvbuf.c signal.c \
	sin.c sinh.c sprintf.c sqrt.c srand.c sscanf.c strcat.c strchr.c strcmp.c \
	strcoll.c strcpy.c strcspn.c strerror.c strftime.c strlen.c strncat.c strncmp.c \
	strncpy.c strpbrk.c strrchr.c strspn.c strstr.c strtod.c strtok.c strtol.c \
	strtoul.c strxfrm.c syscalls.c system.c tan.c tanh.c time.c tmpfile.c \
	tmpnam.c tolower.c toupper.c ungetc.c vfprintf.c vprintf.c vsprintf.c wcstombs.c \
	wctomb.c xasin.c xassert.c xatan.c xctype.c xdefloc.c xdint.c xdnorm.c \
	xdscale.c xdtento.c xdtest.c xdunscal.c xexp.c xfgpos.c xfiles.c xfloat.c \
	xfmtval.c xfopen.c xfoprep.c xfreeloc.c xfrprep.c xfspos.c xfwprep.c xgenld.c \
	xgentime.c xgetdst.c xgetfld.c xgetfloa.c xgetint.c xgetloc.c xgetmem.c xgettime.c \
	xgetzone.c xisdst.c xldtob.c xldunsca.c xlitob.c xloctab.c xlocterm.c xlog.c \
	xmakeloc.c xmbtowc.c xpoly.c xprintf.c xputfld.c xreadloc.c xscanf.c xsetloc.c \
	xsin.c xstate.c xstod.c xstoul.c xstrftim.c xstrxfrm.c xtolower.c xtoupper.c \
	xttotm.c xvalues.c xwctomb.c

OBJ = $(SRC:.c=.o)

libc.a: $(OBJ)
	@echo "[Linking MMURTL Standard C Library]"
	@ar rcs $@ $^

.c.o:
	@echo "[Compiling]" $<
	@$(CC) -c $(CFLAGS) $< -o $@

.s.o:
	@echo "[Assembling]" $<
	@$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJ) libc.a

all: libc.a

install:	libc.a
		cp -p libc.a ../lib
