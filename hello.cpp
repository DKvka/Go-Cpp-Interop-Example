#include <iostream>

extern "C" {
    // This function will be called from Go
    void helloFromCpp() {
        std::cout << "Hello Go, from Cpp!" << std::endl;
    }
}
