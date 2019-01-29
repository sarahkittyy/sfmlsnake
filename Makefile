SRCDIR = src
INCDIR = include
OBJDIR = obj
OUTDIR = bin
OUTFILE = a.out
EXAMPLEDIR = examples

DEBUGDIR = debug
RELEASEDIR = release

CC = g++
CCFLAGS_RELEASE = -c -Wall -I$(INCDIR) -Wno-unused-variable
CCFLAGS_DEBUG = $(CCFLAGS_RELEASE) -g -DDEBUG_MODE

LIB_SFML = -lsfml-window -lsfml-graphics -lsfml-audio -lsfml-network -lsfml-system
LIB_RELEASE = -lstdc++ -std=c++17 $(LIB_SFML)
LIB_DEBUG = -lstdc++ -std=c++17 $(patsubst -lsfml-%, -lsfml-%-d, $(LIB_SFML))

LINKFLAGS_RELEASE = -o $(OUTDIR)/$(RELEASEDIR)/$(OUTFILE)
LINKFLAGS_DEBUG = -o $(OUTDIR)/$(DEBUGDIR)/$(OUTFILE)

SOURCES = $(shell find $(SRCDIR) -name "*.cpp")
OBJ_RELEASE = $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/$(RELEASEDIR)/%.o, $(SOURCES))
OBJ_DEBUG = $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/$(DEBUGDIR)/%.o, $(SOURCES))

EXAMPLES = $(shell find $(EXAMPLEDIR)/ -name "*.cpp")
EXAMPLES_OUT = $(patsubst %.cpp, %.out, $(EXAMPLES))

clean:
	rm -rf $(OUTDIR)/$(RELEASEDIR)/* || true
	rm -rf $(OUTDIR)/$(DEBUGDIR)/* || true
	rm -rf $(OBJDIR)/$(RELEASEDIR)/* || true
	rm -rf $(OBJDIR)/$(DEBUGDIR)/* || true
	@printf "\nCleaned!\n";
	
release: dirs $(OBJ_RELEASE)
	$(CC) $(LINKFLAGS_RELEASE) $(LIB_RELEASE) $(OBJ_RELEASE)
	
debug: dirs $(OBJ_DEBUG)
	$(CC) $(LINKFLAGS_DEBUG) $(LIB_DEBUG) $(OBJ_DEBUG)
	
examples: debug $(EXAMPLES_OUT)

$(EXAMPLEDIR)/%.out: $(EXAMPLEDIR)/%.cpp
	$(CC) $(LIB) -Wall -I$(INCDIR) -Wno-unused-variable $^ -o $@
	
dirs:
	mkdir -p $(OUTDIR)
	mkdir -p $(OBJDIR)
	mkdir -p $(OUTDIR)/$(DEBUGDIR)
	mkdir -p $(OUTDIR)/$(RELEASEDIR)
	mkdir -p $(OBJDIR)/$(DEBUGDIR)
	mkdir -p $(OBJDIR)/$(RELEASEDIR)
	
	mkdir -p $(patsubst $(SRCDIR)/%, $(OBJDIR)/$(DEBUGDIR)/%, $(shell find src/ -type d))
	mkdir -p $(patsubst $(SRCDIR)/%, $(OBJDIR)/$(RELEASEDIR)/%, $(shell find src/ -type d))
	
$(OBJDIR)/$(RELEASEDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) $(CCFLAGS_RELEASE) $< -o $@
	
$(OBJDIR)/$(DEBUGDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) $(CCFLAGS_DEBUG) $< -o $@