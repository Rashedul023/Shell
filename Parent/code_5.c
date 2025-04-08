#include <stdio.h>

int main() {
    printf("This is code 5\n");
    for (int j = 0; j < 5; j++) {
        printf("\n");
        for (int k = j; k < 5; k++) {
            printf("*");
        }
    }
    return 0;
}
