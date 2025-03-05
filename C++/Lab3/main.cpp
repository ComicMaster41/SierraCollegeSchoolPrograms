/**
 * @file main.cpp
 * @author Ricardo Lauder
 * @name Lab2
 * @return int
 *
 */

#include <cmath>
#include <iostream>
#include <vector>

using namespace std;
// Calculate the mean of a vector of floating point numbers

float mean(vector<double> &values) {
  float sum = 0;
  // find how large the vector is
  for (unsigned int i = 0; i < values.size(); i++) {
    sum += values[i];
  }
  // divide total number of vectors by size of vector
  float meanValue = sum / values.size();

  return meanValue;
}

// Calculate the standard deviation from a vctor to a floating point numbers

float standard_deviation(vector<double> &values) {
  // subtract the mean from each of the values in x
  float meanValue = mean(values);
  double sumSquareDiff = 0;
  for (unsigned int i = 0; i < values.size(); i++) {
    double xSub;
    xSub = values[i] - meanValue;
    // square all answers that were gotten from the subtraction
    sumSquareDiff += xSub * xSub;
  }

  // divide calculation in loop by size of vector - 1
  float variance = sumSquareDiff / (values.size() - 1);
  float standardDev = sqrt(variance);

  // print the answers
  cout << "Mean: " << meanValue << endl;
  cout << "Standard Deviation: " << standardDev << endl;
  return standardDev;
}

int main() {
  int numberValues;
  vector<double> values;
  /**
   Prompt the user and get the number of values to enter
   **/
  int flag = -1;
  while (flag == -1) {
    cout << "Enter the number values " << endl;
    cin >> numberValues;
    // if they enter invalid charcter or negative number, reprompt
    while (cin.fail() || numberValues <= 0) { // could also be “while (!cin) {”
      cin.clear();
      cin.ignore(1000, '\n');
      cerr << "Please try again ";
      cin >> numberValues;
    }
    flag = 0;
  }

  /**
   Get the values from the user and store in a vector
   **/
  for (unsigned int count = 0; count < numberValues; count++) {
    double value;
		// if input is positive number or a number, input value
    while (true) {
      cout << "Enter value " << count + 1 << ": ";
      cin >> value;

      if (cin.fail() || value <= 0) {
        cin.clear();
        cin.ignore(1000, '\n');
        cout << "Invalid input. Please enter a positive value." << endl;
      } else {
				// if it is not, then reprompt them
        values.push_back(value);
        break;
      }
    }
  }

  /**
   Display the mean and standard deviation
  **/

  mean(values);
  standard_deviation(values);

  return 0;
}