#include <stdio.h>

int main() {
    int count = 0;
    int temperature;

    while (scanf("%d", &temperature) && temperature) {
        count += temperature < 0;
    }
    printf("%d\n", count);
    return 0;
}
