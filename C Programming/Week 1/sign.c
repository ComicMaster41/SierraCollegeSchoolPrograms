#include <stdio.h>

// prompt user for height of the flag
//  initial flag top is 3
int main()
{
    int pole_height;

    printf("Enter the height of the pole \n");
    scanf("%d", &pole_height);

    printf("|----------------+\n");
    printf("|  Andres Lauder |\n");
    printf("|----------------+\n");

    while (pole_height > 0)
    {
        printf("|\n");
        pole_height--;
    }
}