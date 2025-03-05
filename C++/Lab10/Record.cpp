#include <vector>
#include <string>
#include <sstream>
#include "Record.h"

using namespace std;

// line: CSV line
Record::Record(string line)
{
    string element;
    vector<string>elements;
    stringstream buffer(line);
    
    while (getline(buffer, element, ','))
    {
        elements.push_back(element);
    }
    
    item_code = stol(elements[1]);
    quantity = stoi(elements[2]);
    cost = stod(elements[3]);
}

// declarde == comparison operator (compare item_code and cost between record objects)
bool operator ==(const Record& lhs, const Record& rhs)
{
    return (lhs.item_code == rhs.item_code) && (lhs.cost == rhs.cost);
}


// declare < output operator to display our record
bool operator <(const Record& lhs, const Record& rhs)
{
    return lhs.item_code < rhs.item_code;
}

// declare << output operator to display our record
std::ostream& operator <<(std::ostream& os, const Record& r)
{
    os << r.item_code << ", " << r.quantity << ", " << r.cost << ", " << r.quantity * r.cost;
    return os;
}

// we want to control how data is output, record class
// 

// destroy the record: record object
Record::~Record() {}
