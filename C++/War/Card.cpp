/**
 * @file Card.cpp
 */

 #include "Card.h"
 
 /**
  * @brief Construct a new Card: Card object
  * 
  */

Card::Card(Suit s, Rank r)
{
    cardRank = r;
    cardSuit = s;
}

Card::Card()
{
    cardRank = Joker;
    cardSuit = Spades;
}

bool operator ==(const Card &lhs, const Card &rhs)
{
    return lhs.cardRank == rhs.cardRank;
}

bool operator <(const Card &lhs, const Card &rhs)
{
    return lhs.cardRank < rhs.cardRank;
}

std::ostream& operator <<(std::ostream& os, const Card& card)
{
    if (card.isJoker())
    {
        os << "Joker";
    }

    else 
    {
        os << rankNames[card.cardRank] << " of " << suitNames[card.cardSuit];
    }

    return os;
}
