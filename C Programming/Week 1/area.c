#include <stdio.h>

int main()
{
    int width, height;

    printf("Enter the width of the rectangle: ");
    scanf("%d", &width);
    printf("Enter the height: ");
    scanf("%d", &height);

    int area = width * height;

    printf("The area is %d\n", area);
}