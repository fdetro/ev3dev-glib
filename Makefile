CFLAGS = -g -Wall -Icsrc -DUSE_DUMMY_DELAY

SRC = csrc/u8g_circle.c       \
      csrc/u8g_clip.c         \
      csrc/u8g_com_api.c      \
      csrc/u8g_delay.c        \
      csrc/u8g_font.c         \
      csrc/u8g_ll_api.c       \
      csrc/u8g_page.c         \
      csrc/u8g_pb.c           \
      csrc/u8g_pb8h1f.c       \
      csrc/u8g_rect.c         \
      csrc/u8g_state.c        \
      fntsrc/u8g_font_10x20.c \
      sys/linuxfb/dev/u8g_dev_linux_fb.c

OBJ = $(SRC:.c=.o)

.PHONY: all clean

lib/libev3dev-glib.a: $(OBJ)
	mkdir -p ./lib
	$(AR) -rcs lib/libev3dev-glib.a $(OBJ)

clean:	
	-rm $(OBJ)

all: lib/libev3dev-glib.a
