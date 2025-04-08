#include <stdio.h>

int main() {
    printf("This is code 1\n");
    for (int j = 0; j < 1; j++) {
        printf("\n");
        for (int k = j; k < 1; k++) {
            printf("*");
        }
    }
    return 0;
}
