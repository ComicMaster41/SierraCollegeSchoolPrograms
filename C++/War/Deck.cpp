#include "Deck.h"
#include "Card.h"
#include <stdexcept>

using namespace std;
/**
 * @brief Deck.cpp
 * 
 */

/**
 * @brief Construct a new Deck:: Deck object
 * 
 */
 Deck::Deck()
 {
     // For loop for the Card Suit
     for (int suitIndex = 0; suitIndex < 3; suitIndex++)
     {
        // For loop for the Card Rank
        for (int rankIndex = 1; rankIndex < 13; rankIndex++)
        {
            // Instantiate a Card(suit, rank)
            Card nextCard(static_cast<Card::Suit>(suitIndex), static_cast<Card::Rank>(rankIndex));
            // add this new card to the deck vector
            cardDeck.push_back(nextCard);
        }
        // Set nextCard = 0
        nextCard = 0;
     }
 }

 Card Deck::draw()
 {
    Card drawnCard;
    // Check the nextCard > max Cards (52)
    if (nextCard > cardDeck.size())
    {
        // If it is throw out of range exception
        out_of_range("No more cards in the deck");
    }

    else
    {
        // Else get the nextCard from the vector
        drawnCard = cardDeck.at(nextCard);
        // Increment nextCard
        nextCard++;
    }

    // Return the Card we fetched
    return drawnCard;
 }