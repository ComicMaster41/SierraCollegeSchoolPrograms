/**
 * Main
 */

#include <iostream>
#include <assert.h>
#include "Time.h"


using namespace std;

int main() {

    Time zeroTime;
    assert(zeroTime.get_hour() == 0);
    assert(zeroTime.get_minute() == 0);
    assert(zeroTime.get_second() == 0);

    Time TimeA(1, 1, 1);
    assert(TimeA.get_hour() == 1);
    assert(TimeA.get_minute() == 1);
    assert(TimeA.get_second() == 1);

    Time badTime(99, 99, 99);
    assert(badTime.get_hour() == 0);
    assert(badTime.get_minute() == 0);
    assert(badTime.get_second() == 0);

	return 0;
}
