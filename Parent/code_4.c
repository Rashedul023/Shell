#include <stdio.h>

int main() {
    printf("This is code 4\n");
    for (int j = 0; j < 4; j++) {
        printf("\n");
        for (int k = j; k < 4; k++) {
            printf("*");
        }
    }
    return 0;
}
