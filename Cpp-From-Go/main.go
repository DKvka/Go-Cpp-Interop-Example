package main

/*
// Declare the C++ function
extern void helloFromCpp();
*/
import "C"

func main() {
	// Call the C++ function
	C.helloFromCpp()
}
