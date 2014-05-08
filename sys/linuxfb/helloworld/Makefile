CFLAGS = -g -Wall -I../../../csrc/. -DUSE_DUMMY_DELAY
LIBS=-L../../../lib -lev3dev-glib
SRC = main.c

OBJ = $(SRC:.c=.o)

helloworld: $(OBJ) 
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJ) $(LIBS) -o helloworld

clean:	
	-rm $(OBJ) helloworld

