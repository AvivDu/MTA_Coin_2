CC = g++
CFLAGS = -Wall -g -std=c++11
LDFLAGS = -lz -lpthread

SOURCES = main.cpp Miner.cpp Server.cpp BLOCK_T_Globals.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = funCoin

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@ $(LDFLAGS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)