#ifndef RECORD_H_
#define RECORD_H_

#include <string>
#include <iostream>

class Record
{
public:
    // Constructor and Destructor
    Record(std::string line);
    virtual ~Record();
    
    // declare the getters for the variable
    long getItemCode() {return item_code;} 
    double getCost() {return cost;}
    int getQuantity() {return quantity;}
    
    // declare an adder for the quantity
    void addQuantity(int q) {quantity += q;}
    
    // declarde == comparison operator (compare item_code and cost between record objects)
    friend bool operator ==(const Record& lhs, const Record& rhs);
    
    // declare < output operator to display our record
    friend bool operator <(const Record& lhs, const Record& rhs);
    
    // declare << output operator to display our record
    friend std::ostream& operator <<(std::ostream& os, const Record& r);
    
private:
    unsigned long item_code;
    unsigned int quantity;
    double cost;
};

#endif /* RECORD_H_ */
