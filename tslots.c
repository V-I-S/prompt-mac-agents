#include <stdlib.h>

/*
Communication round slots are given in the `slots` parameter; slots are represented by their indices.

No extra output array needs to be created, as algorithm reorders the input `slots` array and returns its terminal part containing selected transmission set.
 
Native `rand()` & modulo operations is used instead of uniform [0,1] uniform drawing.
*/
int* tSlotsTransmissionSet(int n, int t, int* slots) {
    for (int i = 0; i < t;) {
        int U = rand() % (n-i);
        int swap = slots[n - ++i];
        slots[n-i] = slots[U];
        slots[U] = swap;
    }
    
    return &slots[n-t];
}
