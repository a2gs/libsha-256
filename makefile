CC = cc
AR = ar
RANLIB = ranlib

SRCDIR = ./
INCDIR = ./
BINDIR = ./

CFLAGS = -g -Wall -std=c11 -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -D_POSIX_SOURCE=1 -D_DEFAULT_SOURCE=1 -D_GNU_SOURCE=1

RM = /bin/rm -f

OBJ = $(BINDIR)/libsha-256.o

LIB = $(BINDIR)/libsha-256.a

SOURCES = $(SRCDIR)/sha-256.c

all: $(SOURCES)
	$(CC) -c -o$(OBJ)  -I$(INCDIR) $(SOURCES)  $(CFLAGS)
	$(AR) rc $(LIB) $(OBJ)
	$(RANLIB) $(LIB)
	-$(RM) $(BINDIR)/*.o

clean:
	-$(RM) $(BINDIR)/$(LIB)
