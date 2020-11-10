CC = gcc
CCFLAGS_O0 = -g -Wall -O0
CCFLAGS_O1 = -g -Wall -O1
CCFLAGS_O2 = -g -Wall -O2
CCFLAGS_O3 = -g -Wall -O3
CXXSRCS = mmul.c
BIN = mmul
SIZE = 600
TEST = test.out

all: O0 O1 O2 O3 clean

O0:
	$(CC) $(CCFLAGS_O0) -c $(CXXSRCS)
	$(CC) $(CCFLAGS_O0) -o $(BIN) *.o
	perf stat ./$(BIN) $(SIZE) > $(TEST)

O1:
	$(CC) $(CCFLAGS_O1) -c $(CXXSRCS)
	$(CC) $(CCFLAGS_O1) -o $(BIN) *.o
	perf stat ./$(BIN) $(SIZE) > $(TEST)

O2:
	$(CC) $(CCFLAGS_O2) -c $(CXXSRCS)
	$(CC) $(CCFLAGS_O2) -o $(BIN) *.o
	perf stat ./$(BIN) $(SIZE) > $(TEST)

O3:
	$(CC) $(CCFLAGS_O3) -c $(CXXSRCS)
	$(CC) $(CCFLAGS_O3) -o $(BIN) *.o
	perf stat ./$(BIN) $(SIZE) > $(TEST)

clean:
	rm -f *.o