#include <bitset>

#define MAX_N 100000

using namespace std;

bitset<MAX_N> arrSet;

int main() {
    int n;
    scanf("%d", &n);

    int arr[n];
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    arrSet.set();
    for (int i = 0; i < n; i++) {
        if (arrSet[arr[i]]) {
            printf("%d ", arr[i]);
            arrSet[arr[i]] = 0;
        }
    }
    printf("\n");
    return 0;
}
