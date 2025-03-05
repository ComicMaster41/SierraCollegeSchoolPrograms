/**
 * @brief main
 * 
 */
#include <iostream>
#include <sstream>  
#include <assert.h>

#include "Deck.h"
#include "Card.h"

using namespace std;

int main(int argc, const char * argv[])
{
    Card cardOne(Card::Spades, Card::Ace);
    Card cardTwo(Card::Spades, Card::Ace);
    assert(cardOne == cardTwo);

    Card cardThree(Card::Diamonds, Card::Two);
    assert(cardThree < cardOne);

    std::stringstream buffer;
    buffer.str("");
    buffer << cardOne;
    assert(buffer.str().compare("Ace of Spades") == 0);
}