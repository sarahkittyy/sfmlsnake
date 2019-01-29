OBJDIR = obj
OUTDIR = bin
OUTFILE = a.out

LIB_SFML = -lsfml-window -lsfml-graphics -lsfml-audio -lsfml-network -lsfml-system
LIB = -lstdc++ -std=c++17 $(patsubst -lsfml-%, -lsfml-%-d, $(LIB_SFML))

dirs:
	mkdir -p obj
	mkdir -p bin

build:
	g++ -c -g snake.cpp -o $(OBJDIR)/snake.o
	g++ $(LIB) $(OBJDIR)/snake.o -o $(OUTDIR)/$(OUTFILE)
	
run: build
	./bin/a.out