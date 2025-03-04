#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "md5.h"

// EXECUTE COMMAND to compile program: .A/.OUT [file to read] [file to write]
// ./a.out testfile1.txt hashwritefile.txt
// clang makehash.c md5.c -l crypto
int main(int argc, char *argv[])
{
    char line[256]; // Each line in destFile
    // Accepts two command line arguments
    if (argc < 2)
    {
        printf("Must supply a source and destination file\n");
        exit(1);
    }

    // Open the source file for reading plaintext from.
    FILE *srcFile = fopen(argv[1], "r");
    // If there's an error, display a message and EXIT.
    if(!srcFile)
    {
        printf("Can't open %s for reading\n", argv[1]);
        exit(1);
    }

    // Open the destination file for writing hashes to.
    FILE *destFile = fopen(argv[2], "w");
    // If there's an error, display a message and EXIT.
    if(!destFile)
    {
        printf("Can't open %s for writing\n", argv[2]);
        exit(1);
    }

    // Each line in source file is read in
    while (fgets(line, sizeof(line), srcFile) != NULL)
    {
        size_t len = strlen(line);
        
        // Trim the newline character from input
        char *nl = strchr(line, '\n');
        if (nl) *nl = '\0';
        // Run MD5 function to hash line
        char *hash = md5(line, strlen(line));
        
        // Print hashed plain text
        fprintf(destFile, "%s\n", hash); // Write hash to dest. file

        // Deallocate memory
        free(hash);
    }

    fclose(srcFile);
    fclose(destFile);
}

