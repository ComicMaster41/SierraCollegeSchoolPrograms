#include <stdio.h>

const int LEN = 40;
int flag = 0;
int arr[40];

void firstTen(int arr[]);
void tenToTwenty(int arr[]);
void twentyToTwentySix(int arr[]);
int twentySixToEnd(int arr[]);
int nextCollatz(int y);
void printArray(int arr[]);

int main() {
  firstTen(arr);
  tenToTwenty(arr);
  twentyToTwentySix(arr);
  int x = twentySixToEnd(arr);
  nextCollatz(x);
  printArray(arr);
}
// end up with 7 functions
// myfunc(r+n)

void firstTen(int arr[]) {
  for (int i = 0; i < 10; i++) {
    arr[i] = i;
  }
}

void tenToTwenty(int arr[]) {
  int value1 = 100;    // assign variable to incrementing value
  int *ptr = &arr[10]; // ptr is the address of the array starting from 10
  for (int i = 10; i < 20; i++) {
    // ptr 110
    *ptr = value1;
    // 110 + 10
    value1 += 10;
    // move to next element of array
    ptr++;
  }
}

void twentyToTwentySix(int arr[]) {
  int specialValues[] = {4,  8, 15, 16,
                         23, 42}; // depending on length of this array is how
                                  // many vals will change in arr[]
  int *ptr2 = &arr[20];           // set the pointer to array 20
  // loop through specialValues[]
  for (int i = 0; i < 6; i++) {
    // set pointer to special value
    *ptr2 = specialValues[i];
    // move to next element
    ptr2++;
  }
}

int twentySixToEnd(int arr[]) {
  int startingNumber = 7;
  for (int i = 26; i < LEN; i++) {
    arr[i] = startingNumber;
    startingNumber = nextCollatz(startingNumber);
  }
  return startingNumber;
}

int nextCollatz(int y) {
  if (y % 2 == 0) {
    return y / 2;
  } else {
    return y * 3 + 1;
  }
}

void printArray(int arr[]) {
  // print the array
  for (int i = 0; i < LEN; i++) {
    printf("Array number %d is %d\n", i, arr[i]);
  }
}