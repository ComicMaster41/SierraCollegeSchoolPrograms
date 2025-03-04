#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <arpa/inet.h>

// Function prototypes. Don't change these.
uint8_t *read_card(char *fname, int *size);
void save_jpeg(uint8_t *data, int size, char *filename);
void recover(uint8_t *data, int size);

#define RAW_FILE "card.raw"

int main()
{
    // Read the card.raw file into an array of bytes (uint8_t)
    int card_length;
    uint8_t *card_data = read_card(RAW_FILE, &card_length);
    
    // Recover the images
    recover(card_data, card_length);
}

uint8_t *read_card(char *filename, int *size)
{

    struct stat st;
    if (stat(filename, &st) == -1)
    {
        fprintf(stderr, "Can't get info about %s\n", filename);
        exit(1);
    }
    int len = st.st_size;
    uint8_t *raw = malloc(len * sizeof(uint8_t));
    
    FILE *fp = fopen(filename, "rb");
    if (!fp)
    {
        fprintf(stderr, "Can't open %s for reading\n", filename);
        exit(1);
    }
    
    fread(raw, 1, len, fp);
    fclose(fp);
    
    *size = len;
    return raw;
}

void save_jpeg(uint8_t *data, int size, char *filename)
{
    FILE *fp = fopen(filename, "wb");
    if (!fp)
    {
        fprintf(stderr, "Can't write to %s\n", filename);
        exit(1);
    }
    
    fwrite(data, 1, size, fp);
    fclose(fp);   
}

void recover(uint8_t *data, int size) 
{
    // iterate over size of the image
    int jpeg_count = 0;
    uint8_t *current = data;
    uint8_t *current_jpeg_ptr = NULL;

    for (int i = 0; i < size; i += 512)
    {
        // check if the sequence is [255 216 255 224] or [255 216 255 225]
        uint32_t first_4 = *((uint32_t *)current);
        
        // Use the built in function in Clang to swap the endianess on Mac
        first_4 = htonl(first_4);

        if (first_4 == 0xffd8ffe0 || first_4 == 0xffd8ffe1)
        {
            // print out the block number and block offset of where jpeg found
            printf("JPEG found at block number %d and offset %x\n", i / 512, i);

            // If new image was found, go back in the file until you find the end of the previous JPEG
            if (current_jpeg_ptr != NULL)
            {
                for (uint8_t *ptr = current - 1; ptr >= current_jpeg_ptr; ptr--)
                {
                    if (*ptr == 0xd9 && *(ptr - 1) == 0xff)
                    {                        
                        char filename[40];
                        sprintf(filename, "%d.jpeg", jpeg_count - 1);
                        int length = ptr - current_jpeg_ptr + 1;
                        printf("Saving file %s with size %d\n", filename, length);
                        save_jpeg(current_jpeg_ptr, length, filename);
                        break;
                    }
                }
            }
            jpeg_count += 1;

            current_jpeg_ptr = current;
        }
        current += 512;
    }
    printf("We foune %d images \n", jpeg_count - 1);
}