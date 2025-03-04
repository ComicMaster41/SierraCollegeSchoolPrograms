#include <stdio.h>

// Function Prototypes
void getPrices(float *ptr1, float *ptr2, float *ptr3);
void swap(float *ptr1, float *ptr2);

int main(void) {
  // Allocate space for three pointers
  float input1, input2, input3;
  getPrices(&input1, &input2, &input3);
  printf("The three price are: %.2f %.2f %.2f", input1, input2, input3);
}

// Prompt user to enter three items and return them to caller
void getPrices(float *ptr1, float *ptr2, float *ptr3) {
  printf("Enter the price of item 1: \n");
  scanf("%f", &*ptr1);

  printf("Enter the price of item 2: \n");
  scanf("%f.2f", &*ptr2);

  printf("Enter the price of item 3: \n");
  scanf("%f.2f", &*ptr3);

  // if 1 greater than 2
  if (*ptr1 > *ptr2)
    swap(ptr1, ptr2);
  // if 2 greater than 3
  if (*ptr2 > *ptr1)
    swap(ptr2, ptr3);
  // if 1 greater than 2
  if (*ptr1 > *ptr2)
    swap(ptr1, ptr2);
}

void swap(float *ptr1, float *ptr2) {
  // Does not check if they are out of order
  float temp = *ptr1;
  *ptr1 = *ptr2;
  *ptr2 = temp;
}