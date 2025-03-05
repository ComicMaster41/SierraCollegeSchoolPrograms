/**
 * Main
 */

#include <iostream>
#include <sstream>  
#include <assert.h>
#include <stdexcept>
#include "Time.h"


using namespace std;

int main() {
    // Create Time object to test try/catch
    cout << "Running the example time " << endl;
    try {
        Time testTime(22, 59, 61);
    }
    catch (out_of_range& e) {
        cout << "Caught an exception " << endl;
        cerr << e.what() << endl;
    }
    
	return 0;
}