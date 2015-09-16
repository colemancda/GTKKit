PROG_NOINST = window
SRCS = GtkWindowTests.m

include ../../buildsys.mk

CPPFLAGS += -I../../src
OBJCFLAGS += -fobjc-arc -fobjc-arc-exceptions
LIBS := -L../../src -lgtkkit ${LIBS}
LD = ${OBJC}
