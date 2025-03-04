#include <stdio.h>

// user input for width and height (in that order)

// width between 2-30
// height between 2-12

// else, display error message

int main()
{
    // include control variables to reset the inputted values
    int width, height, control_width, control_height;

    // ask for user input
    printf("Enter grill width: \n");
    scanf("%d", &width);

    printf("Enter grill height: \n");
    scanf("%d", &height);

    // while the inputted values are within the bounds, print the top head of the grill
    if (width > 30)
    {
        printf("Grill width is too long");
        return 0;
    }

    else if (width < 2)
    {
        printf("Grill width is too short");
        return 0;
    }
    
    // subtract the inputted values to not account for the top and bottom of the grill
    width -= 2;
    control_width = width;

    height -= 2;
    control_height = height;

    printf("+");

    while (width > 0)
    {
        printf("-");
        width--;
    }

    printf("+\n");

    // reset the w/h to the inputted values after having them be 0 for the top and bottom of grill
    width = control_width;
    height = control_height;

    // while the height is not 0, print the |
    while (height > 0)
    {
        printf("|");
        // while width is not 0, print the -
        while (width > 0)
        {
            printf("-");
            width--;
        }
        // reset width so it doesn't leave rest of grill empty
        width = control_width;
        printf("|\n");
        // decrement height after each iteration
        height--;
    }

    // complete bottom of grill
    printf("+");

    while (width > 0)
    {
        printf("-");
        width--;
    }

    printf("+\n");
}