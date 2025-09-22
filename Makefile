build:
	gcc -c -fPIC hello.cpp -o hello.o
	gcc -shared -o libhello.so hello.o
	go build .

clean:
	rm -f hello.o libhello.so
