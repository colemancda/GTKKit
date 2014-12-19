CC		?= clang

CFLAGS	+= -arch x86_64
CFLAGS	+= -ObjC
CFLAGS	+= -fobjc-arc
CFLAGS  += -I.
CFLAGS  += `objfw-config --cppflags --objcflags`
CFLAGS 	+= `pkg-config --cflags gtk+-3.0`
CFLAGS 	+= `pkg-config --cflags libgtkkit`

LDFLAGS += `objfw-config --ldflags --libs`
LDFLAGS += `pkg-config --libs gtk+-3.0`
LDFLAGS += `pkg-config --libs libgtkkit`

all: gtktest

gtktest: gtktest.m gtktest.h
	$(CC) -c $(CFLAGS) gtktest.m
	$(CC) $(CFLAGS) $(LDFLAGS) gtktest.o -o gtktest
	
clean:
	rm -f *.o gtktest
	