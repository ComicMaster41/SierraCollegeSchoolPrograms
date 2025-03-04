#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Function prototypes
int getInt(char prompt[], int min, int max);
void fillBoard(int arr[], int len);
void shuffleBoard(int arr[], int len);
void printBoard(int arr[], int len);
void reverse(int reverseNum, int arr[], int len);
int isSorted(int arr[], int len);

int main() {
  // Seed the random number generator
  srandom(time(NULL));

  // Ask user for length of game, from 3-20
  int boardLength = getInt("Enter size of board: ", 3, 20);

  // Create board. Shuffle numbers.
  int board[boardLength];

  // Fill board in order with numbers 1..boardLength.
  fillBoard(board, boardLength);

  // Shuffle board.
  // I recommend initially only uncommenting the shuffleBoard line
  // so it doesn't get stuck in an infinite loop. Once shuffleBoard
  // is working, uncomment the rest of the loop.
  while (isSorted(board, boardLength)) {
    shuffleBoard(board, boardLength);
  }

  // Print board
  printBoard(board, boardLength);

  int gameOver = 0;
  int moves = 0;
  while (!gameOver) {
    // Ask user for amount to reverse
    int amt = getInt("How many to reverse? ", 2, boardLength);
    // Reverse the first (amt) numbers
    reverse(amt, board, boardLength);

    // Print the board
    printBoard(board, boardLength);

    // Check to see if the game is over
    gameOver = isSorted(board, boardLength);

    moves++;
  }
  printf("You won in %d moves!\n", moves);
}

// Get an integer from the user.
//   Display the prompt.
//   Get input from user.
//   Check that the input is between the min and max, inclusive.
//   If not, display error message that includes the min and max,
//     then loop back to get input again.
int getInt(char prompt[], int min, int max) {
  int boardSize = min - 1;
  int flag = 0;
  
  while (flag == 0) {
    printf("Board: %s\n", prompt);
    scanf("%d", &boardSize);
    if (boardSize > max || boardSize < min) {
      printf("Invalid input. Please enter a number between %d and %d: ", min, max);
    } else
      flag = 1;
  }

  return boardSize; // Remove this line and replace it with working code.
}

void fillBoard(int arr[], int len) {
  for (int i = 0; i < len + 1; i++) {
    arr[i] = i;
  }
}

void printBoard(int arr[], int len) {
  for (int i = 0; i < len + 1; i++) {
    printf("%d ", arr[i]);
  }
  printf("\n");
}

void shuffleBoard(int arr[], int len) {
  srandom(time(NULL)); // seed random generator
  // for i from (n-1) downto 1, do:
  // let j = random integer such that 0 ≤ j ≤ i
  // swap a[i] and a[j]

  // shuffle first
  for (int i = len - 1; i > 0; i--) {
    // generate random number between 0 and i
    int j = rand() % (i + 1);

    // swap the two values
    int swap = arr[i];
    arr[i] = arr[j];
    arr[j] = swap;
  }
}

void reverse(int reverseNum, int arr[], int len) {
  int temp;
  int arrayCalc = len - 1;
  for (int i = 0; i < reverseNum / 2; i++) {
    temp = arr[i];
    arr[i] = arr[arrayCalc - i];
    arr[arrayCalc - i] = temp;
  }
}

int isSorted(int arr[], int len) {
  // return 1 if sorted, 0 if elements are out of order
  for (int i = 0; i < len - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      return 0;
    }
  }
  return 1;
}