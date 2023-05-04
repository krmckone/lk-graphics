UNAME := $(shell uname)
deps := main.cpp glad.c

build: $(deps)
ifeq ($(UNAME), Darwin)
	@echo "Making for MacOS"
	# TODO: See if I can compile glad.c using the non-c++ compiler separately and link statically
	clang++ -std=c++11 -stdlib=libc++ -lglfw -framework CoreVideo -framework OpenGL -framework IOKit -framework Cocoa -framework Carbon main.cpp glad.c -o main.o
endif
ifeq ($(UNAME), Linux)
	@echo "Need to implement Linux build. Existing without building"
endif
