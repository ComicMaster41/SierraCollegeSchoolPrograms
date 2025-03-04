#include <math.h>
#include <stdio.h>

int container_length(char input[]);
float get_shipping_fee(char input[]);

// Calculate the length of the container
int container_length(char container[]) {
  int i = 0;
  while (container[i] != 0x0A) {
    if (i > 99) {
      printf("Too many items specified for container, please try again!");
      break;
    }
    i++;
  }
  printf("Container length is %d\n", i);
  return i;
}

// Assigns the weight to each letter
float get_shipping_fee(char container[]) {
  int container_len = container_length(container);
  
  // calculate weight for each compartment
  float compartment1_weight = 0.0f;
  float compartment2_weight = 0.0f;

  for (int i = 0; container[i] != 0x0A; i++) {
    float item_weight = 0.0f;
    if (container[i] >= 'a' && container[i] <= 'z') {
      item_weight = 0.1f * (container[i] - 'a' + 1);
    } else if (container[i] >= 'A' && container[i] <= 'Z') {
      item_weight = 2.7f + 0.1f * (container[i] - 'A');
    } else {
      printf("Invalid container string %s\n", container);
    }
    if (i < container_len / 2) {
      compartment1_weight += item_weight;
    } else {
      compartment2_weight += item_weight;
    }
  }
  printf("Compartment1 weight is %.1f\n", compartment1_weight);
  printf("Compartment2 weight is %.1f\n", compartment2_weight);

  return fmax(compartment1_weight, compartment2_weight) * 2.75;
}

int main() { 
  
  char container[100];

  int container_cnt = 0;
  float shipping_fees = 0.0f;
  
  while (1) {

    printf("Container: ");

    fgets(container, sizeof(container), stdin); 

    if (container[0] == '.') { // Break out of loop when first char is '.'
      break;
    }

    float shipping_fee = get_shipping_fee(container);
    printf("Shipping fee %.2f\n", shipping_fee);
    shipping_fees += shipping_fee;
    container_cnt += 1;
  }

  printf("%d containers, total shipping fee is $%.2f\n", container_cnt,
         shipping_fees);
}