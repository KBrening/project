CFLAGS = -I ./include
##LIB    = ./lib/fmod/libfmodex64.so
LFLAGS = -lrt -lX11 -lGLU -lGL -lm #-lXrandr

all: rainforest

rainforest: rainforest.cpp	log.cpp	keelanB.cpp	jordanP.cpp	miguelN.cpp	randiA.cpp 
	g++ $(CFLAGS) rainforest.cpp keelanB.cpp jordanP.cpp miguelN.cpp randiA.cpp time.h log.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -o rainforest

clean:
	rm -f rainforest
	rm -f *.o

