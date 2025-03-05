//
//  main.cpp
//  Lab1
//  By: Ricardo Lauder
//

#include <iostream>
using namespace std;

int main(int argc, const char * argv[])
{
    string first_name; // declare var

    std::cout << "Hello, World!" << std::endl;

    cout << "Please enter your first name " << endl; // gather input
    cin >> first_name; // store inputted value
    cout << "Hello, " << first_name << endl; // output and concatenate

    return 0;
}