/*
 * List.h
 *
 */

#ifndef LIST_H_
#define LIST_H_

#include "Pair.h"

class List {
public:
	/**
	 * Constructor and destructor
	 */
	List();
	virtual ~List();

	/**
	 * Add a Pair to the end of our List. 
	 */
	void push_back(const Pair& p);

	/**
	 * Clear the list of Pair objects
	 */
	void clear();

	/**
	 * Number of Pair objects in the list
	 */
	unsigned int size();

	/**
	 * Overloading the subscript operator. If the index is out of bound throw an exception
	 */
	Pair& operator[](unsigned int index);

private:
	unsigned int index;
    Pair *pairs;
};

#endif /* LIST_H_ */
