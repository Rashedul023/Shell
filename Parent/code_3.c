#include <stdio.h>

int main() {
    printf("This is code 3\n");
    for (int j = 0; j < 3; j++) {
        printf("\n");
        for (int k = j; k < 3; k++) {
            printf("*");
        }
    }
    return 0;
}
