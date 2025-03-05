/**
 * @file List.cpp
 * @author Andres Lauder
 * @brief 
 * @version 0.1
 * @date 2021-03-08
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#include "List.h"
#include "Pair.h"
#include <stdexcept>
#include <vector>
#include <iostream>

/**
 * @brief Construct a new List object
 * 
 */
 List::List() {
    index = 0;
	pairs = nullptr;
 }

/**
 * @brief Destroy the List object
 * 
 */
 List::~List() {
     // need to delete our free store
     delete[] pairs;
 }

/**
 * @brief push back a Pair object into our List
 * 
 * @param p 
 */
 void List::push_back(const Pair& p) {
    // here we need to add additional free store for the Pair object
    Pair* newPairs = new Pair[index + 1];
    // now we need to copy all the Pair objects in the Pairs free store into newPairs
    for (size_t i = 0; i < index; ++i) {
        newPairs[i] = pairs[i];
    }
    // need to delete the old
    delete[] pairs;
    // and now set Pairs to newPairs
    pairs = newPairs;
    // add the Pair from the argument to the free store
    newPairs[index++] = p;
}


/**
 * @brief return the number of Pairs in our List
 * 
 * @return unsigned int 
 */
 unsigned int List::size() {
     // return the number of Pair objects in our List
     return index;
 }

/**
 * @brief Clear our List of Pairs
 * 
 */
void List::clear() {
    // need to delete our free store
    delete[] pairs;
    // reset the List variables
    index = 0;
	pairs = nullptr;
}

/**
 * @brief [] operator
 * 
 * @param index 
 * @return Pair& 
 */
Pair& List::operator[](unsigned int index) {
    // check if index out of range the throw an exception else return the Pair
    if (index >= this->index) {
        throw std::out_of_range("Index out of range");
    }
    return pairs[index];
}