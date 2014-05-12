# This is a basic makefile.  The original BSD makefile has been moved to # BSDMakefile.  
# Note, this requires the Mingw toolchain, so the clang has to be using mingw
# headers, and linkers.  I just prefer the clang error messages.  

CC    = cl

CFLAGS= -I. -I../gnu_regex/include -D_SIZE_T_DECLARED -DNO_SIGNALS -DWIN32\
         -Zi
OBJS=   main.obj buf.obj io.obj glbl.obj re.obj cbc.obj strlcpy.obj sub.obj\
        undo.obj getopt.obj progname.obj
LIBS= /link /DEBUG /LIBPATH:../gnu_regex/lib regex.lib

all: $(OBJS) 
	$(CC) $(CFLAGS) -o ed $(OBJS) $(LIBS)
