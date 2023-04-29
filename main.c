#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "bt.c"
#include "tslots.c"

void heatupRand() {
    srand(time(NULL));
    for (int i = 0; i < 10; ++i) {
        rand();
    }
}

int* initSlotsArray(int n) {
    int* array = calloc(n+1, sizeof(int));
    for (int i = 0; i < n; ++i)
        array[i] = i+1;
    return array;
}

void printArray(int* array) {
    int i = 0;
    printf("[");
    for (i = 0; array[i] != 0; ++i)
        printf("%d,", array[i]);
    if (i > 0)
        printf("\b");
    printf("]\n");
}

void freeArray(int* array) {
    array[0] = 0;
    free(array);
}

int main(int argc, char **argv) {
    int n = 10;
    
    heatupRand();
    
    printf("Available slots:\n");
    int* bt_slots = initSlotsArray(n);
    int* tSlots_slots = initSlotsArray(n);
    printArray(bt_slots);
    
    printf("Selected BT transmission set:\n");
    int* bt_transmission = calloc(n+1, sizeof(int));
    btTransmissionSet(n, 0.3, bt_slots, bt_transmission);
    printArray(bt_transmission);
    
    printf("Selected t-Slots transmission set:\n");
    int* tSlots_transmission = tSlotsTransmissionSet(n, 3, tSlots_slots);
    printArray(tSlots_transmission);

    freeArray(bt_slots);
    freeArray(tSlots_slots);
    freeArray(bt_transmission);
    return 0;
}
