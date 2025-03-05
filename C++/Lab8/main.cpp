/**
 * Main
 */

#include <iostream>
#include <assert.h>
#include "List.h"
#include "Pair.h"


using namespace std;

int main() {

    List newList;
    assert(newList.size() == 0);

    Pair pairA(4.0, 5.0);
    newList.push_back(pairA);
    assert(newList.size() == 1);
    assert(newList[0] == pairA);

    Pair pairB(3.0, 9.0);
    newList.push_back(pairB);
    assert(newList.size() == 2);
    assert(newList[0] == pairA);
    assert(newList[1] == pairB);

    newList.clear();
    assert(newList.size() == 0);

    newList.push_back(pairA);
    assert(newList.size() == 1);
    assert(newList[0] == pairA);

    newList.push_back(pairB);
    assert(newList.size() == 2);
    assert(newList[0] == pairA);
    assert(newList[1] == pairB);

    // add additional tests as you feel necessary

	return 0;
}
