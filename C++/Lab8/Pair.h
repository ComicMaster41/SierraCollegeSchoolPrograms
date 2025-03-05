/*
 * Pair.h
 *
 *  Created on: Dec 10, 2017
 *      Author: student
 */

#ifndef Pair_H_
#define Pair_H_

class Pair {
public:
	/**
	 * Constructor and destructor
	 */
    Pair() : left(0.0), right(0.0) {}
	Pair(const double left, const double right) : left(left), right(right) {}
	~Pair() {}

	/**
	 * Get the left value
	 */
	double getLeft() const {return left;}

	/**
	 * Get the right value
	 */
	double getRight() const {return right;}

    /**
     * comparison operator
     */
    bool operator==(const Pair &rhs) {
        return this->left == rhs.left && this->right == rhs.right;
    }

private:
	double left;
	double right;
};

#endif /* Pair_H_ */
