#include <stdlib.h>

/*
Communication round slots are given in the `slots` parameter; slots are represented by their indices.

Address of the output array `trans` is taken as a parameter, it is assumed to be n-size, NULL-initialized.
*/
int* btTransmissionSet(int n, float p, int* slots, int* trans) {
    int t = 0;
    for (int i = 0; i < n; ++i) {
        float U = ((float) rand()) / RAND_MAX;
        if (U < p)
            trans[t++] = slots[i];
    }
    return trans;
}
