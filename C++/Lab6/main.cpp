/**
 * Main
 */

#include <iostream>
#include <sstream>  
#include <assert.h>
#include "Time.h"


using namespace std;

int main() {

	Time zeroTime;
	assert(zeroTime.get_hour() == 0);
	assert(zeroTime.get_minute() == 0);
	assert(zeroTime.get_second() == 0);

	Time maxTime(23, 59, 59);
	assert(maxTime.get_hour() == 23);
	assert(maxTime.get_minute() == 59);
	assert(maxTime.get_second() == 59);

    // convert object output so we can compare with a string
    std::stringstream buffer;
    zeroTime.set_24Hour(true);
    buffer.str(""); // since we are reusing the buffer we need to clear it before using
    buffer << zeroTime;
    assert(buffer.str().compare("0:0:0") == 0);

    zeroTime.set_24Hour(false);
    buffer.str("");
    buffer << zeroTime;
    assert(buffer.str().compare("12:0:0 AM") == 0);

    Time oneTime(0, 0, 1);
    Time resultTime = maxTime + oneTime;
    buffer.str("");
    buffer << resultTime;
    assert(buffer.str().compare("0:0:0") == 0);

    resultTime = resultTime - oneTime;
    buffer.str("");
    buffer << resultTime;
    assert(buffer.str().compare("23:59:59") == 0);

	return 0;
}
