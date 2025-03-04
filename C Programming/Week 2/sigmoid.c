#include <stdio.h>
#include <math.h>
// Define the constant for Euler's number
#define E 2.71828

float Sigmoid(float x);

int main()
{
    float sigmoidValue;
    float tableValue = 0;
    printf("Enter the starting point of the sigmoid ");
    scanf("%f", &sigmoidValue);
    if (sigmoidValue >= 0)
    {
        tableValue = sigmoidValue; // holds negative value of user input
        tableValue *= -1;
    }

    while (tableValue <= sigmoidValue)
    {
        printf("%.3f %.3f\n", tableValue, Sigmoid(tableValue));
        tableValue += 1.0;
    }
}

float Sigmoid(float x)
{
    float power_raised = exp(-x);
    float sigmoid_result = 1.0 / (1.0 + power_raised);
    return sigmoid_result;
}