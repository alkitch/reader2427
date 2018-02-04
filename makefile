LINK_TARGET = prodcom
OBJS = prodmain.o prodcom.o prodnfc.o prodweb.o
INCLUDES = -I/home/pi/chilkat-9.5.0/include -I/home/pi/libnfc/include/nfc
LIBS = -pthread -lwiringPi -lnfc -lchilkat-9.5.0
LIBPATHS = -L/home/pi/chilkat-9.5.0/lib -L/home/pi/libnfc/libnfc
FLAGS = -g
CFLAGS = -g
CC=g++

all : $(LINK_TARGET)

$(LINK_TARGET) : $(OBJS)
	  $(CC) $(FLAGS) -o $@ $^  $(LIBS) $(LIBPATHS)


prodmain.o: prodmain.cpp prodcom.h 
	  $(CC) $(CFLAGS) -c $< $(INCLUDES)

prodcom.o: prodcom.cpp prodcom.h
	  $(CC) $(CFLAGS) -c $< $(INCLUDES)

prodnfc.o: prodnfc.cpp prodcom.h
	  $(CC) $(CFLAGS) -c $< $(INCLUDES)

prodweb.o: prodweb.cpp prodcom.h
	  $(CC) $(CFLAGS) -c $< $(INCLUDES)



clean : $(OBJS)
	rm  $^