#include <stdio.h>

// prompt user to type in two fractions
// program adds two fractions together and prints a sum

// two variables for the numerator
// two variables for the denominator
// two variables for sum (numerator and denominator)

// a/b
// c/d
int main()
{
    int a, b;
    int c, d;
    int numerator, denominator;

    printf("Type in the first fraction ");
    scanf("%d/%d", &a, &b);

    printf("Type in the second fraction ");
    scanf("%d/%d", &c, &d);

    numerator = (a*d) + (c*b);
    denominator = b*d;

    printf("%d/%dThe sum is \n", numerator, denominator);
}