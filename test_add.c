#include <stdio.h>
#include "add.h"

int main() {
    int a = 5;
    int b = 10;
    int expected_sum = a + b;
    int result = add(a, b);

    if (result != expected_sum) {
        printf("Test failed: %d + %d = %d, expected %d\n", a, b, result, expected_sum);
        return 1;
    }

    printf("Test passed: %d + %d = %d\n", a, b, result);
    return 0;
}
