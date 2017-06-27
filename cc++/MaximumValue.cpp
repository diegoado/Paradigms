#include <limits>
#include <stdio.h>
#include <utility>

using namespace std;

int maxValue = numeric_limits<int>::min();

int getValue(int x, int y) {
    return x*x - 3*y + x;
}

int main() {
    int m, n, o, p;
    scanf("%d %d %d %d", &m, &n, &o, &p);

    int value;
    pair<int, int> xy;

    for (int x = m; x <= n; x++) {
        for (int y = o; y <= p; y++) {
            if (maxValue < (value = getValue(x, y))) {
                maxValue = value;
                xy.first = x;
                xy.second = y;
            }
        }
    }
    printf("(%d,%d)\n%d", xy.first, xy.second, maxValue);
    return 0;
}
