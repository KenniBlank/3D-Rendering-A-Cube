CFLAGS = -Wall -g -std=c99 -DSOURCE=\"3dCube.c\"
LIBS   = -lSDL2 -lSDL2_image -lSDL2_ttf -lm

ifeq ($(OS),Windows_NT)
	GAME = Executable.exe
	CFLAGS += -L ./
	RUN_CMD = $(GAME)
else
	GAME = Executable
	RUN_CMD = ./$(GAME)
endif

all:
	gcc 3dCube.c -o $(GAME) $(CFLAGS) $(LIBS)
	$(RUN_CMD)
	rm -f $(GAME)
	clear
