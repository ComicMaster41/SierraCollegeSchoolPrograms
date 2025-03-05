/*
 * Pair.h
 *
 *  Created on: Dec 10, 2017
 *      Author: student
 */

#ifndef Pair_H_
#define Pair_H_

template<class T>

class Pair {
public:
	/**
	 * Constructor and destructor
	 */
    Pair() : left(nullptr), right(nullptr) {}
	Pair(const T left, const T right) : left(left), right(right) {}
	~Pair() {}

	/**
	 * Get the left value
	 */
	T getLeft() const {return left;}

	/**
	 * Get the right value
	 */
	T getRight() const {return right;}

    /**
     * comparison operator
     */
    T operator==(const Pair &rhs) {
        return this->left == rhs.left && this->right == rhs.right;
    }

private:
	T left;
	T right;
};

#endif /* Pair_H_ */
