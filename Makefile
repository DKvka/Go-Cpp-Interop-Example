# Minimal Makefile for statically linking C++ into Go

GO_BINARY = interop

build:
	g++ -c hello.cpp -o hello.o
	ar rcs libhello.a hello.o
	CGO_ENABLED=1 CGO_LDFLAGS="-L. -lhello -lstdc++" go build -ldflags '-extldflags "-static"' -o $(GO_BINARY)

clean:
	rm -f hello.o libhello.a $(GO_BINARY)
