#include <stdio.h>

// Max string length
#define STR_MAX 100

// Function prototypes here:

int stringLength(char str[]);
int trim(char str[]);
void reverse(char str[]);


// Main function
int main()
{
    char input[STR_MAX];
	
    // Loop until we break out
    while (1)
    {
        printf("Enter a string: ");
        fgets(input, sizeof(input), stdin);      // Finish this call to fgets
        if (input[0] == '.')                      // Break out of loop when first char is '.'
	{
            break;
        }
		
        // Trim the newline
        trim(input);

        // Print the trimmed string
        printf("After trim: %s\n", input);
		
        // Reverse the string
        reverse(input);
		
        // Print the reversed string
        printf("Reversed: %s\n", input);
    }
}

// return the length of the string
int stringLength(char str[])
{
    int length = 0;
    for (int i = 0; str[i] != '\0'; i++)
    {
        length++;
    }

    return length;
}

int trim(char str[])
{
    int i = 0;
    while (str[i] != '\0') // loop while it is not null char
    {
        if (str[i] == '\0')
            str[i] = ' ';
        i++;
    }
    return i; // return length of loop/array
}

void reverse(char str[])
{
    int length = stringLength(str);
    for (int i = 0; i < length / 2; i++)
    {
        int temp = str[length - 1 - i];
        str[length - 1 - i] = str[i];
        str[i] = temp;
    }
}