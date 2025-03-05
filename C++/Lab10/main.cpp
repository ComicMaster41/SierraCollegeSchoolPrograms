#include <iostream>
#include <fstream>
#include <vector>
#include "Record.h"
#include <algorithm>

using namespace std;

int main(int argc, const char * argv[])
{
    ifstream file;
    string line; // file name
    vector<Record> recordList;
    int totalEntries = 0, duplicates = 0;
    
    // prompt user for file name
    //cout << "Enter file name: " << line << endl; // QUESTION: Is this okay, or other method?
    cout << "Enter file name: ";
    cin >> line;
    cout << endl;

    // open file    
    file.open(line);
    
    // check if open succeded. If not, exit with error message
    if (!file) 
    {
        cerr << "Unable to open file"; 
        return 1;
    }

    // iterate through file reading one line at a time
    while (getline(file, line))
    {
        totalEntries++;
        Record newRecord(line);
        bool found = false;
        for (unsigned index = 0; index < recordList.size(); index++)
        {
            // check if item code and cost of new record matches record on the list
            if (newRecord == recordList[index])
            {
                // if we have match then add quantity of new record to the record we matched
                recordList[index].addQuantity(newRecord.getQuantity());
                found = true;
                duplicates++;
                break;
            }
        }
        
        // if not add the new record to the list and continue
        if (!found)
        {
            recordList.push_back(newRecord);
        }
    }
    
    // QUESTIONS: why do we use unsigned int a lot in cpp
    // How to do operator overloading
    // Different cases of output
    sort(recordList.begin(), recordList.end());
    // when done output the list records
    cout << "Record list is: " << endl;
    for (unsigned i = 0; i < recordList.size(); i++)
    {
        cout << recordList[i] << endl;
    }
    // don't forget to sort the record list
    // get the recordList size as the stopping value

    cout << "Total entires read: " << totalEntries << endl;
    cout << "Number of duplicates: " << duplicates << endl;
    // output the report
    
    // back at where you were inputting data keep track of how many duplicates you found
    // output the number of entries read and the number of duplicates
    
    // close the file and return
    file.close();
}
