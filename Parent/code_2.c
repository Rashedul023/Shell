#include <stdio.h>

int main() {
    printf("This is code 2\n");
    for (int j = 0; j < 2; j++) {
        printf("\n");
        for (int k = j; k < 2; k++) {
            printf("*");
        }
    }
    return 0;
}
