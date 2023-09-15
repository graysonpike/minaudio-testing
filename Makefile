.DEFAULT_GOAL := sdl_engine_spatial_audio.out

CC = g++
FLAGS = -std=c++11 -g
LIBS  = -lsdlgl -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer


OBJ_FILES = sdl_engine_spatial_audio.o \


clean:
	rm -f *.out *.o

sdl_engine_spatial_audio.out: $(OBJ_FILES)
	$(CC) $(FLAGS) -o sdl_engine_spatial_audio.out $(OBJ_FILES) $(LIBS)

%.o: %.cpp
	$(CC) $(FLAGS) -c $< -o $@

all: sdl_engine_spatial_audio.out