# This is a basic makefile.  The original BSD makefile has been moved to
# BSDMakefile.  

CC    = cl

CFLAGS= -I. -I../gnu_regex/include -D_SIZE_T_DECLARED -DNO_SIGNALS -DWIN32\
         -Zi -O2 -MD
OBJS=   main.obj buf.obj io.obj glbl.obj re.obj cbc.obj strlcpy.obj sub.obj\
        undo.obj getopt.obj progname.obj
LIBS= /link  /LIBPATH:../gnu_regex/lib regex.lib

all: $(OBJS) 
	$(CC) $(CFLAGS) -o ed $(OBJS) $(LIBS)

clean:
	del *.obj *.pdb ed.exe

