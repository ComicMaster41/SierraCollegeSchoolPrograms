#include <libsocket/libinetsocket.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

// COMPILE: clang roundtrip.c -l socket

/* 
    Fetch the current time, storing it in a variable.
    Send data to the server.
    Receive the response.
    Fetch the current time again, storing it in a different variable.
    Subtract the two times to compute the interval.
*/

double GetTime()
{
    // Fetch the current time and store it into a variable
    struct timeval now;
    gettimeofday(&now, NULL);
    return now.tv_sec + now.tv_usec / 1000000.0;
}

int main(int argc, char *argv[])
{
    // Check if command prompt is valid
    if (argc <= 1)
    {
        printf("No commands were given\n");
        return 1;
    }

    // Set variable to user input
    char *database = argv[1];

    // Check if database is valid
    if (!database)
    {
        printf("Could not establish valid connection\n");
    }

    printf("Connected to sydney.cs.sierracollege.edu\n");

    // Establish connection between client and user

    // Create a buffer for the full server address
    char fullServerAddress[256]; // Adjust the size as needed

    // Concatenate user input with the server address
    sprintf(fullServerAddress, "%s.cs.sierracollege.edu", database);

    int server = create_inet_stream_socket(fullServerAddress, "5505", LIBSOCKET_IPv4, 0);
    FILE *s = fdopen(server, "r+"); // opens it for reading and writing

    // Check if file descriptor is valid
    if (server < 0)
    {
        char errmsg[1000];
        sprintf(errmsg, "Can't open connection");
        perror(errmsg);
        exit(1);
    }

    // Send data to the server
    fprintf(s, "REQUEST\n");

    double startTime = GetTime();

    // Receive response
    char response[100];
    fgets(response, 100, s);

    // Fetch current time again
    double endTime = GetTime();

    // Compute the interval
    double interval = endTime - startTime;

    // Close connection
    fclose(s);
}