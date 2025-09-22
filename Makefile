build:
	g++ -c -fPIC hello.cpp -o hello.o
	g++ -shared -o libhello.so hello.o

	go build .
