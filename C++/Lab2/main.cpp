/**
 * @file main.cpp
 * @author Ricardo Lauder
 * @name Lab2 
 * @return int
 * 
 */

 #include <iostream>
 #include <vector>
 #include <cmath>

 using namespace std; 

int main()
{
    vector<double> values;
    unsigned int numberValues;
    /**
     Prompt the user and get the number of values to enter
     **/
     cout << "Enter the number values " << endl;
     cin >> numberValues;
    
    /**
     Get the values from the user and store in a vector
     **/
     for (unsigned int count = 0; count < numberValues; count++){
         double value;
         cout << "Enter value " << count << " ";
         cin >> value;
         values.push_back(value); 
     }
    
    /**
     Calculate and display the mean and standard deviation
     **/
    int sum = 0;
    for (int i = 0; i < values.size(); i++){
         sum += values[i];
     }
    double mean = sum / values.size();
    cout << "Mean: " << mean << endl;
    // subtract the mean from each of the values in x
    double sumSquareDiff = 0;
    for (int i = 0; i < values.size(); i++){
        double xSub;
        xSub = values[i] - mean;
        // square all answers that were gotten from the subtraction
        sumSquareDiff += xSub * xSub;
     }

     double variance = sumSquareDiff / (values.size() - 1);
     double standardDev = sqrt(variance);
    
    // print the answers

    cout << "Standard Deviation: " << standardDev << endl;
    
    return 0;
}